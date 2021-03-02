import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/chat/presentation/ui/pages/chat_page.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/lecture_form_page.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  @override
  void initState() {
    super.initState();
    context.read<LectureBloc>().add(
          LectureEvent.getAllLecturesByUserId(userId: widget.user.id),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // ElevatedButton(
            //   onPressed: () => context.read<LectureBloc>().add(
            //         LectureEvent.getAllLecturesByUserId(userId: widget.user.id),
            //       ),
            //   child: Text('GetAllLectures'),
            // ),
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
                          ElevatedButton(
                            onPressed: () =>
                                Get.to(ChatPage(userEntity: widget.user)),
                            child: Text('Go to chat page'),
                          )
                        ],
                      );
                    },
                  ),
                  CircleAvatar(child: Icon(Icons.person)),
                ],
              ),
            ),
            BlocConsumer<LectureBloc, LectureState>(
              listener: (context, state) {
                state.maybeMap(
                  initial: (e) => context.read<LectureBloc>().add(
                        LectureEvent.getAllLecturesByUserId(
                            userId: widget.user.id),
                      ),
                  orElse: () => print('listener orElse'),
                );
              },
              builder: (context, state) {
                return state.maybeMap(
                  allLecturesLoaded: (lecturesState) {
                    final lectures = lecturesState.lecturesEntities;
                    return lectures.length > 0
                        ? Expanded(
                            child: ListView.builder(
                              itemCount: lectures.length,
                              itemBuilder: (context, index) =>
                                  CourseCard(user: widget.user),
                            ),
                          )
                        : Text('you have no courses');
                  },
                  orElse: () => CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.upload_file),
          onPressed: () => Get.to(LectureFormPage(user: widget.user)),
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key key,
    @required this.user,
  }) : super(key: key);

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(LectureFormPage(user: user)),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Mobile Development'),
            LayoutBuilder(
              builder: (context, constraints) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SleekCircularSlider(
                    appearance: CircularSliderAppearance(
                      size: 80.h,
                      customColors: CustomSliderColors(
                        progressBarColor: Colors.orange,
                        dotColor: Colors.transparent,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
