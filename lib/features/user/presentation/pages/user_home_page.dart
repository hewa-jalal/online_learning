import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/chat/presentation/ui/pages/chat_page.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/course_page.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/widgets/course_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../video_page.dart';

class UserHomePage extends StatefulWidget {
  final UserEntity user;
  const UserHomePage({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  _UserLoadedWidgetState createState() => _UserLoadedWidgetState();
}

class _UserLoadedWidgetState extends State<UserHomePage> {
  UserEntity get user => widget.user;

  @override
  Widget build(BuildContext context) {
    print('user_role => ${user.role}');
    final lectureBloc = context.read<LectureBloc>();
    if (ModalRoute.of(context).isCurrent) {
      lectureBloc.add(LectureEvent.getAllCoursesByUserId());
    }

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon: Icon(Icons.chat),
                onPressed: () => Get.to(
                  () => ChatPage(userEntity: widget.user),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: AvatarGlow(
                endRadius: 20,
                child: IconButton(
                  icon: Icon(Icons.videocam),
                  onPressed: () => Get.to(
                    () => VideoPage(),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 0.01.sh),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'fullName',
                          ),
                        ],
                      );
                    },
                  ),
                  CircleAvatar(child: Icon(Icons.person)),
                ],
              ),
            ),
            SizedBox(height: 0.02.sh),
            BlocBuilder<LectureBloc, LectureState>(
              builder: (context, state) {
                if (state.isSubmitting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  final courseIds = state.courseIds;
                  return courseIds.length > 0
                      ? Expanded(
                          child: ListView.builder(
                            itemCount: courseIds.length,
                            itemBuilder: (context, index) => CourseCard(
                              onTap: () => Get.to(() =>
                                      CoursePage(courseTitle: courseIds[index]))
                                  .then((value) => setState(() {})),
                              courseTitle: courseIds[index],
                            ),
                          ),
                        )
                      : _EmptyWidget();
                }
              },
            ),
          ],
        ),
        floatingActionButton:
            user.role == 'teacher' ? _CreateCourseFab() : null,
      ),
    );
  }
}

class _CreateCourseFab extends StatefulWidget {
  @override
  __CreateCourseFabState createState() => __CreateCourseFabState();
}

class __CreateCourseFabState extends State<_CreateCourseFab> {
  var courseTitle = '';

  @override
  Widget build(BuildContext context) {
    final lectureBloc = context.read<LectureBloc>();

    return FloatingActionButton(
      child: Icon(Icons.drive_folder_upload),
      onPressed: () => Get.dialog(
        Dialog(
          backgroundColor: Color(0xffA5A6AA),
          child: SizedBox(
            height: 0.15.sh,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Center(
                      child: TextField(
                        onChanged: (val) => courseTitle = val,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 2.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.4, color: Colors.white),
                          ),
                          hintText: 'Enter course name',
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                        context.read<LectureBloc>().add(
                              LectureEvent.createCourse(
                                courseTitle: courseTitle,
                              ),
                            );
                        lectureBloc.add(LectureEvent.getAllCoursesByUserId());
                      },
                      child: Text('Done'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        barrierDismissible: true,
      ),
    );
  }
}

class _EmptyWidget extends StatelessWidget {
  const _EmptyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 0.15.sh),
        SvgPicture.asset(
          'assets/svg/empty_courses.svg',
          height: 0.35.sh,
          alignment: Alignment.bottomCenter,
        ),
        SizedBox(height: 0.03.sh),
        Text(
          'you haven\'t created any course yet',
          style: TextStyle(
            fontSize: 21.sp,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
