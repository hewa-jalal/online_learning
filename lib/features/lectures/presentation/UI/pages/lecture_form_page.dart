import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LectureFormPage extends StatefulWidget {
  final UserEntity user;

  const LectureFormPage({Key key, @required this.user}) : super(key: key);
  @override
  _LectureFormPageState createState() => _LectureFormPageState();
}

class _LectureFormPageState extends State<LectureFormPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LectureBloc, LectureState>(
      listener: (context, state) {
        state.maybeMap(
          loading: (e) =>
              context.read<ProgressBloc>().add(ProgressEvent.started()),
          orElse: () => print('orElse in UI'),
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            // body: LoadingWidget(),
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
                ElevatedButton(
                  onPressed: () {
                    context.read<ProgressBloc>().add(ProgressEvent.started());
                  },
                  child: Text('Start the loading'),
                ),
              ],
            );
          },
          loading: (progressState) {
            print('ProgressState ${progressState.percentage}');
            return Center(
              child: CircularPercentIndicator(
                radius: 200,
                percent: progressState.percentage.toDouble() / 100,
              ),
            );
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
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<ProgressBloc>().add(ProgressEvent.started());
          },
          child: Text('Start the loading'),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<LectureBloc>().add(LectureEvent.uploadLecture());
          },
          child: Text('Upload Lecture'),
        ),
      ],
    );
  }
}
