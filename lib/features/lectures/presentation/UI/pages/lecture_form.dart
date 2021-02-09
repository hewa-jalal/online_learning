import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';

class LectureForm extends StatefulWidget {
  @override
  _LectureFormState createState() => _LectureFormState();
}

class _LectureFormState extends State<LectureForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LectureBloc, LectureState>(
      builder: (context, state) {
        return Scaffold(
          body: state.map(
            initial: (_) => ElevatedButton(
              onPressed: () =>
                  context.read<LectureBloc>().add(LectureEvent.postLecture()),
              child: Text('g'),
            ),
            lectureLoaded: (e) => Text(e.lectureEntity.fileUrl),
          ),
        );
      },
    );
  }
}
