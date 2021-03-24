import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/homeworks/presentation/bloc/homework_bloc.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/upload_page.dart';
import 'package:online_learning/features/lectures/presentation/UI/widgets/homework_card.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/data/models/user_model.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../widgets/lecture_card.dart';

class CoursePage extends StatefulWidget {
  final String courseTitle;

  const CoursePage({Key key, @required this.courseTitle}) : super(key: key);
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage>
    with SingleTickerProviderStateMixin {
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
              courseTitle: widget.courseTitle,
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
              courseTitle: widget.courseTitle,
            ),
          ).then((value) => setState(() {})),
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
            indicator: MaterialIndicator(),
          ),
        ),
        body: BlocBuilder<LectureBloc, LectureState>(
          builder: (context, state) {
            return TabBarView(
              controller: _tabController,
              children: [
                _LecturesList(courseTitle: widget.courseTitle),
                _HomeworksList(courseTitle: widget.courseTitle),
              ],
            );
          },
        ),
        floatingActionButton: _fab(),
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
        if (state.isSubmitting) {
          return Center(child: CircularProgressIndicator());
        } else {
          final lectures = state.lectures;

          return ListView.builder(
            itemCount: lectures.length,
            itemBuilder: (context, index) {
              return LectureCard(
                lecture: lectures[index],
              );
            },
          );
        }
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
        final homeworks = state.homeworks;
        return ListView.builder(
          itemCount: homeworks.length,
          itemBuilder: (context, index) {
            return HomeworkCard(
              homework: homeworks[index],
            );
          },
        );
      },
    );
  }
}
