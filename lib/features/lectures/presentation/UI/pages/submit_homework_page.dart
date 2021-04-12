import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning/features/homeworks/presentation/bloc/homework_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:path/path.dart' as path;
import 'package:faker/faker.dart';

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
  HomeworkEntity get homework => widget.homework;
  final _faker = Faker();
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
                    color: Color(0xffA5A6AA),

                    // margin: EdgeInsets.symmetric(horizontal: 0.02.sw),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 4.0),
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
                            thumbColor: Color(0xff5F36DA),
                            thickness: 2.5,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: Text(
                                  _faker.lorem.sentences(18).toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                      onPressed: () =>
                          _homeworkBloc.add(HomeworkEvent.started()),
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
                              homeworkTitle: homework.title,
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
