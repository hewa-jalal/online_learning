import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';

class LectureFormPage extends StatefulWidget {
  final UserEntity user;

  const LectureFormPage({Key key, @required this.user}) : super(key: key);
  @override
  _LectureFormPageState createState() => _LectureFormPageState();
}

class _LectureFormPageState extends State<LectureFormPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LectureBloc, LectureState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: state.map(
              initial: (_) => ElevatedButton(
                onPressed: () => context
                    .read<LectureBloc>()
                    .add(LectureEvent.uploadLecture()),
                child: Text('Upload a lecture'),
              ),
              lectureLoaded: (e) => Column(
                children: [
                  ElevatedButton(
                    onPressed: () => context.read<LectureBloc>().add(
                        LectureEvent.downloadLecture(
                            fileUrl: e.lectureEntity.fileUrl)),
                    child: Text('Download a lecture'),
                  ),
                  // Text(widget.user.fullName),
                  Text(e.lectureEntity.fileUrl),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
