import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/lecture_form_page.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/data/models/user_model.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../widgets/lecture_card.dart';

class LecturesPage extends StatefulWidget {
  final String courseTitle;

  const LecturesPage({Key key, @required this.courseTitle}) : super(key: key);
  @override
  _LecturesPageState createState() => _LecturesPageState();
}

class _LecturesPageState extends State<LecturesPage>
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
            () => LectureFormPage(
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
            () => LectureFormPage(
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
    if (ModalRoute.of(context).isCurrent) {
      context.read<LectureBloc>().add(
          LectureEvent.getAllLecturesByCourse(courseTitle: widget.courseTitle));
    }

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
                _LecturesList(),
                Text('g'),
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LectureBloc, LectureState>(
      builder: (context, state) {
        final lectures = state.lectures;

        return ListView.builder(
          itemCount: lectures.length,
          itemBuilder: (context, index) {
            return LectureCard(
              lecture: lectures[index],
            );
          },
        );
      },
    );
  }
}
