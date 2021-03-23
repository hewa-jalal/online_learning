import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:mime/mime.dart';
import 'package:online_learning/features/homeworks/presentation/bloc/homework_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/lectures/presentation/bloc/progress_bloc/progress_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LectureFormPage extends StatefulWidget {
  final UserEntity user;
  final String courseTitle;
  final bool isHomeWork;

  const LectureFormPage({
    Key key,
    @required this.user,
    @required this.courseTitle,
    @required this.isHomeWork,
  }) : super(key: key);
  @override
  _LectureFormPageState createState() => _LectureFormPageState();
}

class _LectureFormPageState extends State<LectureFormPage> {
  @override
  Widget build(BuildContext context) {
    // final homeworkCubit = context.watch<HomeworkBloc>().state;
    // print('watch ${homeworkCubit.isSubmitting}');
    return BlocConsumer<LectureBloc, LectureState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          print('IF progress');
          context.read<ProgressBloc>().add(ProgressEvent.started());
          Get.dialog(ProgressDialog());
        }
      },
      builder: (context, state) {
        return SafeArea(
          // child: Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //         'assets/images/undraw_Add_files.png',
          //       ),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          child: Scaffold(
            // backgroundColor: Colors.transparent,
            body: InitialWidget(
              isHomework: widget.isHomeWork,
              user: widget.user,
              courseTitle: widget.courseTitle,
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

class InitialWidget extends StatefulWidget {
  final UserEntity user;
  final String courseTitle;
  final bool isHomework;
  const InitialWidget({
    Key key,
    @required this.user,
    @required this.courseTitle,
    @required this.isHomework,
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
    return BlocBuilder<UserAuthBloc, UserAuthState>(
      builder: (context, state) {
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
                onChanged: (val) => setState(() => title = val.trim()),
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
                onChanged: (val) => setState(() => description = val.trim()),
              ),
              SizedBox(height: 20),
              widget.isHomework
                  ? _HomeworkBottomSelection(
                      title: title,
                      description: description,
                      user: user,
                      courseTitle: widget.courseTitle,
                    )
                  : _LecutreBottomSelection(
                      user: user,
                      courseTitle: widget.courseTitle,
                      title: title,
                      description: description,
                    ),
            ],
          ),
        );
      },
    );
  }
}

class _HomeworkBottomSelection extends StatefulWidget {
  const _HomeworkBottomSelection({
    Key key,
    @required this.user,
    @required this.courseTitle,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  final UserEntity user;
  final String courseTitle;
  final String title;
  final String description;

  @override
  __HomeworkBottomSelectionState createState() =>
      __HomeworkBottomSelectionState();
}

class __HomeworkBottomSelectionState extends State<_HomeworkBottomSelection> {
  TimeOfDay _time = TimeOfDay.now().replacing(minute: 30);
  DateTime _dueDate;
  String _formattedString;
  String get title => widget.title;
  void onTimeChanged(TimeOfDay newTime) {
    setState(() {});
    _time = newTime;
    _formattedString = _formattedString +
        ' ${_time.hour.toString().padLeft(2, '0')}:${_time.minute.toString().padLeft(2, '0')}:00';

    _dueDate = DateTime.parse(_formattedString);
  }

  @override
  Widget build(BuildContext context) {
    final homeworkBloc = context.read<HomeworkBloc>();

    return BlocBuilder<HomeworkBloc, HomeworkState>(
      builder: (context, state) {
        if (state.filePath.isEmpty) {
          return ElevatedButton(
            onPressed: () {
              homeworkBloc.add(HomeworkEvent.selectFile());
            },
            child: Text('Select Lecture'),
          );
        } else {
          final fileName = state.filePath.split('/').last;
          final fileType = lookupMimeType(fileName);
          // print('endsWith --> ' + fileType.endsWith('pdf').toString());
          // print('mime -----> ' + lookupMimeType(fileName));
          return Column(
            children: [
              DatePicker(
                DateTime.now(),
                onDateChange: (date) {
                  _formattedString =
                      '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
                  _dueDate = DateTime.parse(_formattedString);

                  Navigator.of(context).push(
                    showPicker(
                      context: context,
                      value: _time,
                      onChange: onTimeChanged,
                    ),
                  );
                },
              ),
              ListTile(
                enabled: true,
                leading: Icon(MaterialCommunityIcons.file_pdf),
                title: Text(fileName),
                trailing: IconButton(
                  onPressed: () => homeworkBloc.add(HomeworkEvent.started()),
                  icon: Icon(MaterialCommunityIcons.close_box),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  homeworkBloc.add(
                    HomeworkEvent.uploadHomework(
                      user: widget.user,
                      title: widget.title,
                      courseTitle: widget.courseTitle,
                      description: widget.description,
                      filePath: state.filePath,
                      dueDate: _dueDate.millisecondsSinceEpoch,
                    ),
                  );
                },
                child: Text('Upload Homework'),
              ),
            ],
          );
        }
      },
    );
  }
}

class _LecutreBottomSelection extends StatelessWidget {
  const _LecutreBottomSelection({
    Key key,
    @required this.user,
    @required this.title,
    @required this.description,
    @required this.courseTitle,
  }) : super(key: key);

  final UserEntity user;
  final String courseTitle;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final lectureBloc = context.read<LectureBloc>();
    return BlocBuilder<LectureBloc, LectureState>(
      builder: (context, state) {
        if (state.filePath.isEmpty) {
          return ElevatedButton(
            onPressed: () {
              lectureBloc.add(LectureEvent.selectFile());
            },
            child: Text('Select Lecture'),
          );
        } else {
          final fileName = state.filePath.split('/').last;
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
                  onPressed: () =>
                      context.read<LectureBloc>().add(LectureEvent.started()),
                  icon: Icon(MaterialCommunityIcons.close_box),
                ),
              ),
              ElevatedButton(
                onPressed: () => lectureBloc.add(
                  LectureEvent.uploadLecture(
                    filePath: state.filePath,
                    user: user,
                    courseTitle: courseTitle,
                    title: title,
                    description: description,
                  ),
                ),
                child: Text('Upload Lecture'),
              ),
            ],
          );
        }
      },
    );
  }
}
