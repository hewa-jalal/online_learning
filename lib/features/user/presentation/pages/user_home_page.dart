import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/submit_homework_page.dart';
import '../../../chat/presentation/ui/pages/chat_page.dart';
import '../../../lectures/presentation/UI/pages/course_page.dart';
import '../../../lectures/presentation/bloc/lecture_bloc.dart';
import '../../domain/entites/user.dart';
import '../widgets/course_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserHomePage extends StatefulWidget {
  final UserEntity user;
  const UserHomePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _UserLoadedWidgetState createState() => _UserLoadedWidgetState();
}

class _UserLoadedWidgetState extends State<UserHomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  UserEntity get user => widget.user;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final lectureBloc = context.read<LectureBloc>();
    if (ModalRoute.of(context)!.isCurrent) {
      lectureBloc.add(LectureEvent.getAllCoursesByDept(courseDept: user.dept!));
    }

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          automaticallyImplyLeading: false,
          actions: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: IconButton(
            //     icon: Icon(Icons.chat),
            //     onPressed: () => Get.to(
            //       () => ChatPage(userEntity: widget.user, cou),
            //     ),
            //   ),
            // ),
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
                            'Welcome,',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                            ),
                          ),
                          Text(
                            user.fullName!,
                            style: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  // CircleAvatar(child: Icon(Icons.person)),
                ],
              ),
            ),
            SizedBox(height: 0.02.sh),
            BlocBuilder<LectureBloc, LectureState>(
              builder: (context, state) {
                if (state.courseIds.length > 0) {
                  final courseIds = state.courseIds;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: courseIds.length,
                      itemBuilder: (context, index) => CourseCard(
                        onTap: () => Get.to(() =>
                                CoursePage(courseTitle: courseIds[index]))!
                            .then((value) => setState(() {})),
                        courseTitle: courseIds[index],
                      ),
                    ),
                  );
                } else if (state.courseIds.length == 0) {
                  return _EmptyCourseWidget();
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
        floatingActionButton: user.role == 'teacher'
            ? _CreateCourseFab(
                user: user,
              )
            : null,
      ),
    );
  }
}

class _CreateCourseFab extends StatefulWidget {
  final UserEntity user;

  const _CreateCourseFab({
    super.key,
    required this.user,
  });
  @override
  __CreateCourseFabState createState() => __CreateCourseFabState();
}

class __CreateCourseFabState extends State<_CreateCourseFab> {
  var courseTitle = '';

  @override
  Widget build(BuildContext context) {
    // to watch course changes
    final lectureBloc = context.watch<LectureBloc>();

    return FloatingActionButton(
      backgroundColor: Colors.white,
      child: Icon(Icons.drive_folder_upload, color: APP_PURPlE),
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
                        autofocus: true,
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
                        lectureBloc.add(
                          LectureEvent.createCourse(
                            courseTitle: courseTitle,
                            userDept: widget.user.dept!,
                          ),
                        );
                        // lectureBloc.add(
                        //   LectureEvent.getAllCoursesByDept(
                        //       courseDept: widget.user.dept!),
                        // );
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

class _EmptyCourseWidget extends StatelessWidget {
  const _EmptyCourseWidget({
    Key? key,
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
