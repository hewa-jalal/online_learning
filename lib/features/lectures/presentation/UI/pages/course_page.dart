import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import '../../../../chat/video/cubit/video_cubit.dart';
import '../../../../chat/video/video_chat_page.dart';
import '../../../../homeworks/presentation/bloc/homework_bloc.dart';
import 'upload_page.dart';
import '../widgets/homework_card.dart';
import '../../bloc/lecture_bloc.dart';
import '../../../../user/data/models/user_model.dart';
import '../../../../user/presentation/bloc/user_auth_bloc.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/lecture_card.dart';

class CoursePage extends StatefulWidget {
  final String courseTitle;

  const CoursePage({Key key, @required this.courseTitle}) : super(key: key);
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage>
    with SingleTickerProviderStateMixin {
  String get courseTitle => widget.courseTitle;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  Widget _fab() => _tabController.index == 0
      ? FloatingActionButton(
          child: Icon(Icons.picture_as_pdf),
          onPressed: () => Get.to(
            () => UploadPage(
              isHomeWork: false,
              user: UserModel(
                id: '12',
              ),
              courseTitle: courseTitle,
            ),
          ).then((value) => setState(() {})),
        )
      : FloatingActionButton(
          child: Icon(Icons.home_work),
          onPressed: () => Get.to(
            () => UploadPage(
              isHomeWork: true,
              user: UserModel(
                id: '12',
              ),
              courseTitle: courseTitle,
            ),
          ).then((value) => setState(() {})),
        );

  @override
  Widget build(BuildContext context) {
    final _userAuthState = context.read<UserAuthBloc>().state;
    context.read<VideoCubit>().getVideoUrl();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(courseTitle),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: BlocBuilder<VideoCubit, VideoState>(
                builder: (context, state) {
                  if (_userAuthState.user.role == 'teacher') {
                    return _TeacherVideoButton(courseTitle: courseTitle);
                  }
                  return state.map(
                    initial: (e) => _VideoButton(),
                    chatRoomLoaded: (e) =>
                        _GlowVideoButton(courseTitle: courseTitle),
                  );
                },
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                child: Text(
                  'Lectures',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Homeworks',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            indicator: MaterialIndicator(color: Color(0xff5F36DA)),
          ),
        ),
        body: BlocBuilder<LectureBloc, LectureState>(
          builder: (context, state) {
            return TabBarView(
              controller: _tabController,
              children: [
                _LecturesList(courseTitle: courseTitle),
                _HomeworksList(courseTitle: courseTitle),
              ],
            );
          },
        ),
        floatingActionButton:
            _userAuthState.user.role == 'teacher' ? _fab() : null,
      ),
    );
  }
}

class _GlowVideoButton extends StatelessWidget {
  const _GlowVideoButton({
    Key key,
    @required this.courseTitle,
  }) : super(key: key);

  final String courseTitle;

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      endRadius: 20,
      child: IconButton(
        icon: Icon(Icons.videocam),
        onPressed: () => Get.to(
          () => VideoChatPage(courseTitle: courseTitle),
        ),
      ),
    );
  }
}

class _VideoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.videocam),
      onPressed: () => Get.dialog(
        Dialog(
          backgroundColor: Color(0xffA5A6AA),
          child: SizedBox(
            height: 0.15.sh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(MaterialIcons.videocam_off, size: 60),
                Text(
                  'currently there is no live lecture',
                  style: TextStyle(
                    fontSize: 22.sp,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TeacherVideoButton extends StatelessWidget {
  const _TeacherVideoButton({
    Key key,
    @required this.courseTitle,
  }) : super(key: key);

  final String courseTitle;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.videocam),
      onPressed: () => Get.to(
        () => VideoChatPage(courseTitle: courseTitle),
      ),
    );
  }
}

class _LecturesList extends StatelessWidget {
  const _LecturesList({
    Key key,
    @required this.courseTitle,
  }) : super(key: key);

  final String courseTitle;

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context).isCurrent) {
      context
          .read<LectureBloc>()
          .add(LectureEvent.getAllLecturesByCourse(courseTitle: courseTitle));
    }
    return BlocBuilder<LectureBloc, LectureState>(
      builder: (context, state) {
        print('lecutres state => ${state.isSubmitting}');

        if (state.isSubmitting) {
          return Center(child: CircularProgressIndicator());
        }
        final lectures = state.lectures;
        return lectures.length > 0
            ? ListView.builder(
                itemCount: lectures.length,
                itemBuilder: (context, index) {
                  return LectureCard(
                    lecture: lectures[index],
                    courseTitle: courseTitle,
                  );
                },
              )
            : _LectureEmptyWidget();
      },
    );
  }
}

class _HomeworksList extends StatelessWidget {
  const _HomeworksList({
    Key key,
    @required this.courseTitle,
  }) : super(key: key);
  final String courseTitle;

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context).isCurrent) {
      context
          .read<HomeworkBloc>()
          .add(HomeworkEvent.getAllHomeworksByCourse(courseTitle: courseTitle));
    }
    return BlocBuilder<HomeworkBloc, HomeworkState>(
      builder: (context, state) {
        if (state.isSubmitting) {
          return Center(child: CircularProgressIndicator());
        }
        final homeworks = state.homeworks;
        return homeworks.length > 0
            ? ListView.builder(
                itemCount: homeworks.length,
                itemBuilder: (context, index) {
                  return HomeworkCard(
                    homework: homeworks[index],
                    courseTitle: courseTitle,
                  );
                },
              )
            : _HomeworkEmptyWidget();
      },
    );
  }
}

class _LectureEmptyWidget extends StatelessWidget {
  const _LectureEmptyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Entypo.text_document,
          size: 0.2.sh,
          color: Colors.blueGrey[100],
        ),
        SizedBox(height: 0.05.sh),
        Text(
          'you haven\'t uploaded any lectures yet',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class _HomeworkEmptyWidget extends StatelessWidget {
  const _HomeworkEmptyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Entypo.text_document,
          size: 0.2.sh,
          color: Colors.blueGrey[100],
        ),
        SizedBox(height: 0.05.sh),
        Text(
          'you haven\'t uploaded any homework yet',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
