import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning/features/homeworks/presentation/bloc/homework_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:path/path.dart' as path;

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
  var note = '';
  @override
  Widget build(BuildContext context) {
    final _homeworkBloc = context.watch<HomeworkBloc>();
    final _userAuthState = context.read<UserAuthBloc>().state;

    final _isFileSelected = _homeworkBloc.state.filePath.isNotEmpty;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 0.02.sh),
                SizedBox(
                  height: 0.3.sh,
                  width: 1.sw,
                  child: Card(
                    // margin: EdgeInsets.symmetric(horizontal: 0.02.sw),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.homework.title),
                        Text(widget.homework.description),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 0.1.sh),
                TextField(
                  onChanged: (val) => note = val,
                  decoration: InputDecoration(
                    labelText: 'note',
                  ),
                ),
                SizedBox(height: 0.15.sh),
                if (_isFileSelected) ...[
                  ListTile(
                    enabled: true,
                    leading: Icon(MaterialCommunityIcons.file_pdf),
                    title: Text(_homeworkBloc.state.filePath.name),
                    trailing: IconButton(
                      onPressed: () =>
                          _homeworkBloc.add(HomeworkEvent.started()),
                      icon: Icon(MaterialCommunityIcons.close_box),
                    ),
                  ),
                  SizedBox(height: 0.1)
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
                              homeworkTitle: widget.homework.title,
                              submitDate: DateTime.now().millisecondsSinceEpoch,
                            ),
                          )
                        : _homeworkBloc.add(HomeworkEvent.selectFile()),
                    child: Text(
                      _isFileSelected
                          ? 'upload your homework'
                          : 'select your homework',
                    ),
                  ),
                )
              ],
            ),
          ),
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
