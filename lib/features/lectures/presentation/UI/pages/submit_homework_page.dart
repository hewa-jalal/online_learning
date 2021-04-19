import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:nil/nil.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning/features/homeworks/presentation/bloc/homework_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:path/path.dart' as path;
import 'package:faker/faker.dart';

const APP_PURPlE = Color(0xff5F36DA);
final faker = Faker();

class SubmitHomeworkPage extends StatefulWidget {
  final HomeworkEntity homework;
  final String courseTitle;

  const SubmitHomeworkPage({
    Key key,
    @required this.homework,
    @required this.courseTitle,
  }) : super(key: key);

  @override
  _SubmitHomeworkPageState createState() => _SubmitHomeworkPageState();
}

class _SubmitHomeworkPageState extends State<SubmitHomeworkPage> {
  HomeworkEntity get homework => widget.homework;
  @override
  Widget build(BuildContext context) {
    final _homeworkBloc = context.watch<HomeworkBloc>();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 0.02.sh),
                SizedBox(
                  height: 0.35.sh,
                  width: 1.sw,
                  child: Card(
                    color: APP_PURPlE,
                    // margin: EdgeInsets.symmetric(horizontal: 0.02.sw),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            top: 4.0,
                            right: 8.0,
                          ),
                          child: Text(
                            homework.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        SizedBox(height: 0.01.sh),
                        Expanded(
                          child: RawScrollbar(
                            isAlwaysShown: true,
                            thumbColor: Colors.white,
                            thickness: 2.5,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text(
                                  faker.lorem.sentences(18).toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // for scrollable text to not be at the end of card
                        SizedBox(height: 0.015.sh)
                      ],
                    ),
                  ),
                ),
                SubmittedHomework(
                  homeworkTitle: homework.title,
                  courseTitle: widget.courseTitle,
                ),
                // NotSubmittedHomework(
                //   homeworkTitle: homework.title,
                //   courseTitle: widget.courseTitle,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotSubmittedHomework extends StatefulWidget {
  final String homeworkTitle;
  final String courseTitle;

  const NotSubmittedHomework({
    Key key,
    @required this.homeworkTitle,
    @required this.courseTitle,
  }) : super(key: key);
  @override
  _NotSubmittedHomeworkState createState() => _NotSubmittedHomeworkState();
}

class _NotSubmittedHomeworkState extends State<NotSubmittedHomework> {
  var note = '';

  @override
  Widget build(BuildContext context) {
    final _homeworkBloc = context.watch<HomeworkBloc>();
    final _isFileSelected = _homeworkBloc.state.filePath.isNotEmpty;
    final _userAuthState = context.read<UserAuthBloc>().state;

    return Column(
      children: <Widget>[
        SizedBox(height: 0.1.sh),
        TextField(
          maxLines: null,
          onChanged: (val) => note = val,
          decoration: InputDecoration(
            labelText: 'note',
          ),
        ),
        SizedBox(height: 0.12.sh),
        if (_isFileSelected) ...[
          ListTile(
            enabled: true,
            leading: Icon(MaterialCommunityIcons.file_pdf),
            title: Text(_homeworkBloc.state.filePath.name),
            trailing: IconButton(
              onPressed: () => _homeworkBloc.add(HomeworkEvent.started()),
              icon: Icon(MaterialCommunityIcons.close_box),
            ),
          ),
          SizedBox(height: 0.04.sh)
        ],
        SizedBox(
          height: 0.072.sh,
          width: 0.8.sw,
          child: ElevatedButton(
            onPressed: () => _isFileSelected
                ? _homeworkBloc.add(
                    HomeworkEvent.submitHomework(
                      userId: _userAuthState.id.toString(),
                      fileUrl: _homeworkBloc.state.filePath,
                      courseTitle: widget.courseTitle,
                      note: note,
                      homeworkTitle: widget.homeworkTitle,
                      submitDate: DateTime.now().millisecondsSinceEpoch,
                    ),
                  )
                : _homeworkBloc.add(HomeworkEvent.selectFile()),
            child: Text(
              _isFileSelected ? 'upload your homework' : 'select your homework',
            ),
          ),
        )
      ],
    );
  }
}

class SubmittedHomework extends StatefulWidget {
  final String homeworkTitle;
  final String courseTitle;

  const SubmittedHomework({
    Key key,
    @required this.homeworkTitle,
    @required this.courseTitle,
  }) : super(key: key);
  @override
  _SubmittedHomeworkState createState() => _SubmittedHomeworkState();
}

class _SubmittedHomeworkState extends State<SubmittedHomework> {
  var _isNoteReadOnly = true;
  var _note = '';

  @override
  void initState() {
    super.initState();
    context
        .read<HomeworkBloc>()
        .add(HomeworkEvent.getHomework(courseTitle: 'IT'));
  }

  @override
  Widget build(BuildContext context) {
    final _homeworkBloc = context.read<HomeworkBloc>();
    final _userAuthState = context.read<UserAuthBloc>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 0.022.sh),
        Text('Your submission file:'),
        BlocBuilder<HomeworkBloc, HomeworkState>(
          builder: (context, state) {
            // TODO: HERE
            if (state.filePath.isEmpty) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    _homeworkBloc.add(HomeworkEvent.selectFile());
                  },
                  child: Text('Select Lecture'),
                ),
              );
            }
            return ListTile(
              enabled: true,
              leading: Icon(MaterialCommunityIcons.file_pdf),
              title: Text(_homeworkBloc.state.filePath.name),
              // title: Text(faker.person.name()),
              trailing: IconButton(
                onPressed: () {
                  Get.dialog(
                    DeleteFileSubmissionDialog(),
                  );
                },
                icon: Icon(MaterialCommunityIcons.close_box),
              ),
            );
          },
        ),
        SizedBox(
          height: 0.35.sh,
          width: 1.sw,
          child: Card(
            color: APP_PURPlE,
            // margin: EdgeInsets.symmetric(horizontal: 0.02.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 4.0,
                    right: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'your note',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () =>
                            setState(() => _isNoteReadOnly = false),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 0.01.sh),
                Expanded(
                  child: RawScrollbar(
                    isAlwaysShown: true,
                    thumbColor: Colors.white,
                    thickness: 2.5,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 10,
                        ),
                        child: TextField(
                          readOnly: _isNoteReadOnly,
                          enableInteractiveSelection: true,
                          maxLines: null,
                          controller: TextEditingController()
                            ..text = _homeworkBloc.state.note,
                          onChanged: (val) => _note = val,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // for scrollable text to not be at the end of card
                SizedBox(height: 0.015.sh)
              ],
            ),
          ),
        ),
        SizedBox(height: 0.01.sh),
        Center(
          child: ElevatedButton(
            onPressed: () {
              _homeworkBloc.add(
                HomeworkEvent.submitHomework(
                  userId: _userAuthState.id.toString(),
                  fileUrl: _homeworkBloc.state.filePath,
                  courseTitle: widget.courseTitle,
                  note: _note,
                  homeworkTitle: widget.homeworkTitle,
                  submitDate: DateTime.now().millisecondsSinceEpoch,
                ),
              );
            },
            child: Text('Saved edits & submit'),
          ),
        )
      ],
    );
  }
}

class DeleteFileSubmissionDialog extends StatelessWidget {
  const DeleteFileSubmissionDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _homeworkBloc = context.watch<HomeworkBloc>();

    return Dialog(
      backgroundColor: Color(0xffA5A6AA),
      child: SizedBox(
        height: 0.15.sh,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Are you sure you want to delete your submitted file?',
              style: TextStyle(
                fontSize: 22.sp,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 0.012.sh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('No'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                    _homeworkBloc.add(HomeworkEvent.started());
                  },
                  child: Text('Yes'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

extension FileExtention on String {
  String get name {
    return this?.split(Platform.pathSeparator)?.last;
  }
}
