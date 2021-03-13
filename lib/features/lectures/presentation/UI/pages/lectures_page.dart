import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/lecture_form_page.dart';
import 'package:online_learning/features/lectures/presentation/UI/widgets/lecture_card.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/data/models/user_mode.dart';

class LecturesPage extends StatefulWidget {
  final String courseTitle;

  const LecturesPage({Key key, @required this.courseTitle}) : super(key: key);
  @override
  _LecturesPageState createState() => _LecturesPageState();
}

class _LecturesPageState extends State<LecturesPage> {
  @override
  void initState() {
    super.initState();
    context.read<LectureBloc>().add(
        LectureEvent.getAllLecturesByCourse(courseTitle: widget.courseTitle));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<LectureBloc, LectureState>(
          builder: (context, state) {
            return state.maybeMap(
              allLecturesLoaded: (lecturesState) {
                final lectures = lecturesState.lecturesEntities;
                return ListView.builder(
                  itemCount: lectures.length,
                  itemBuilder: (context, index) =>
                      LectureCard(courseTitle: lectures[index].title),
                );
              },
              orElse: () => Text('orElse'),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.picture_as_pdf),
          onPressed: () => Get.to(
            () => LectureFormPage(
              user: UserModel(id: '12'),
              courseTitle: widget.courseTitle,
            ),
          ),
        ),
      ),
    );
  }
}
