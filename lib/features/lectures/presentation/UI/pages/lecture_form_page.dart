import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LectureFormPage extends StatefulWidget {
  final UserEntity user;
  final String courseTitle;

  const LectureFormPage({
    Key key,
    @required this.user,
    @required this.courseTitle,
  }) : super(key: key);
  @override
  _LectureFormPageState createState() => _LectureFormPageState();
}

class _LectureFormPageState extends State<LectureFormPage> {
  @override
  void initState() {
    super.initState();
    context.read<LectureBloc>().add(LectureEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LectureBloc, LectureState>(
      listener: (context, state) {
        // state.maybeMap(
        //   allCoursesLoaded: (e) =>
        //       context.read<LectureBloc>().add(LectureEvent.started()),
        //    loading: (e) =>
        //        context.read<ProgressBloc>().add(ProgressEvent.started()),
        //   orElse: () => print('orElse in UI'),
        // );
      },
      builder: (context, state) {
        print('state $state');
        return SafeArea(
          child: Scaffold(
            body: state.maybeMap(
              initial: (_) => InitialWidget(
                user: widget.user,
                courseTitle: widget.courseTitle,
              ),
              loading: (e) {
                print('loading............');
                return LoadingWidget();
              },
              orElse: () => FlutterLogo(),
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
            return Column(
              children: [
                Text('Initial progress'),
                ElevatedButton(
                  onPressed: () =>
                      context.read<ProgressBloc>().add(ProgressEvent.started()),
                  child: Text('Start the loading'),
                ),
              ],
            );
          },
          loading: (progressState) {
            var _progress = (progressState.percentage * 100);
            final progressBloc = context.read<ProgressBloc>();
            print('ProgressState ${progressState.percentage}');
            return Column(
              children: [
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.pause_outlined),
                      onPressed: () => progressBloc.add(ProgressEvent.pause()),
                    ),
                    IconButton(
                      icon: Icon(Icons.play_arrow_outlined),
                      onPressed: () => progressBloc.add(ProgressEvent.resume()),
                    ),
                    IconButton(
                      icon: Icon(Icons.cancel_outlined),
                      onPressed: () => progressBloc.add(ProgressEvent.cancel()),
                    ),
                  ],
                ),
                Center(
                  child: CircularPercentIndicator(
                    radius: 200,
                    percent: progressState.percentage,
                    center: Text(_progress.toStringAsFixed(0)),
                  ),
                ),
              ],
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

class InitialWidget extends StatefulWidget {
  final UserEntity user;
  final String courseTitle;
  const InitialWidget({
    Key key,
    @required this.user,
    @required this.courseTitle,
  }) : super(key: key);

  @override
  _InitialWidgetState createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<InitialWidget> {
  UserEntity get user => widget.user;
  var title = '';
  var description = '';
  @override
  Widget build(BuildContext context) {
    final lectureBloc = context.read<LectureBloc>();
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(hintText: 'Enter title'),
          onChanged: (val) => title = val.trim(),
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Enter description'),
          onChanged: (val) => description = val.trim(),
        ),
        ElevatedButton(
          onPressed: () {
            lectureBloc.add(
              LectureEvent.uploadLecture(
                user: user,
                title: title,
                description: description,
                courseTitle: widget.courseTitle,
              ),
            );
          },
          child: Text('Upload Lecture'),
        ),
      ],
    );
  }
}
