import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:mime/mime.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeago/timeago.dart' as timeago;

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
  Widget build(BuildContext context) {
    return BlocConsumer<LectureBloc, LectureState>(
      listener: (context, state) {
        state.maybeMap(
          loading: (e) {
            context.read<ProgressBloc>().add(ProgressEvent.started());
            Get.dialog(ProgressDialog());
          },
          orElse: () => print('lecture_form_page => orElse'),
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/undraw_Add_files.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: state.maybeMap(
                orElse: () => InitialWidget(
                  user: widget.user,
                  courseTitle: widget.courseTitle,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ProgressDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProgressBloc, ProgressState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          loading: (progressState) {
            var _progress = (progressState.percentage * 100);
            return _progress == 100
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.done),
                      ElevatedButton(
                        onPressed: () => Get.back(),
                        child: Text('Done'),
                      )
                    ],
                  )
                : SizedBox(
                    height: 0.15.sh,
                    child: Center(
                      child: CircularPercentIndicator(
                        radius: 200,
                        percent: progressState.percentage,
                        center: Text(_progress.toStringAsFixed(0)),
                      ),
                    ),
                  );
          },
          orElse: () => FlutterLogo(),
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
            // to control the progress events
            final progressBloc = context.read<ProgressBloc>();
            print('ProgressState ${progressState.percentage}');
            return Column(
              children: <Widget>[
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
    return BlocBuilder<UserAuthBloc, UserAuthState>(
      builder: (context, state) {
        // state.maybeMap(
        //   userLoaded: (userState) => print(
        //       'userState ===> ' + userState.user.lastSeenInEpoch.toString()),
        //   orElse: () => print('lecture_form_page => orElse'),
        // );
        var date = DateTime.fromMillisecondsSinceEpoch(state.lastSeenInEpoch);
        var ago = timeago.format(date);
        print('come on copyWith: => ' + state.id.toString());
        print('come on copyWith name: => ' + state.fullName);
        print('come on copyWith ago: => ' + ago);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'title*',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.4),
                  ),
                ),
                onChanged: (val) => title = val.trim(),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'description',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.4),
                  ),
                ),
                onChanged: (val) => description = val.trim(),
              ),
              SizedBox(height: 20),
              BlocBuilder<LectureBloc, LectureState>(
                builder: (context, state) {
                  return state.maybeMap(
                    fileSelected: (fileState) {
                      final fileName = fileState.filePath.split('/').last;
                      final fileType = lookupMimeType(fileName);
                      // print('endsWith --> ' + fileType.endsWith('pdf').toString());
                      // print('mime -----> ' + lookupMimeType(fileName));
                      return Column(
                        children: [
                          ListTile(
                            enabled: true,
                            leading: Icon(MaterialCommunityIcons.file_pdf),
                            title: Text(fileName),
                            trailing: IconButton(
                              onPressed: () => context
                                  .read<LectureBloc>()
                                  .add(LectureEvent.started()),
                              icon: Icon(MaterialCommunityIcons.close_box),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              lectureBloc.add(
                                LectureEvent.uploadLecture(
                                  filePath: fileState.filePath,
                                  user: user,
                                  courseTitle: widget.courseTitle,
                                  title: title,
                                  description: description,
                                ),
                              );
                            },
                            child: Text('Upload Lecture'),
                          ),
                        ],
                      );
                    },
                    orElse: () => ElevatedButton(
                      onPressed: () {
                        lectureBloc.add(LectureEvent.selectFile());
                      },
                      child: Text('Select Lecture'),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
