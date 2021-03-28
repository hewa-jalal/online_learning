import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/chat/presentation/ui/pages/chat_page.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/course_page.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/widgets/course_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

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
  var courseTitle = '';

  @override
  Widget build(BuildContext context) {
    final lectureBloc = context.read<LectureBloc>();
    if (ModalRoute.of(context).isCurrent) {
      lectureBloc.add(LectureEvent.getAllCoursesByUserId());
    }

    return SafeArea(
      child: Scaffold(
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
          ],
        ),
        body: Column(
          children: [
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
                      : Text('you have no courses');
                }
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.drive_folder_upload),
          onPressed: () => Get.dialog(
            Dialog(
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
        ),
      ),
    );
  }
}
