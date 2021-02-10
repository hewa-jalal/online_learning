import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart';
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
              initial: (_) => InitialWidget(),
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
              loading: (e) {
                print('Loading widget');
                return LoadingWidget();
              },
            ),
          ),
        );
      },
    );
  }
}

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgressBloc, ProgressState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            print('progress initial');
            return Column(
              children: [
                Text('Initial progress'),
              ],
            );
          },
          loading: (progressState) {
            print('progress loading ${progressState.percentage}');

            return CircularProgressIndicator(
                value: progressState.percentage.toDouble());
          },
          paused: (_) {
            print('progress paused');

            return Text('Paused progress');
          },
          resumed: (_) {
            print('progress resumed');
            return Text('Resumed progress');
          },
          loaded: (_) {
            print('progress loaded');
            return Text('Loaded progress');
          },
        );
      },
    );
  }
}

class InitialWidget extends StatelessWidget {
  const InitialWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.read<LectureBloc>().add(LectureEvent.uploadLecture());
        },
        child: Text('Upload Lecture'));
  }
}
