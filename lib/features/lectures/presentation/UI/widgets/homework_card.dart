import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import '../../../../homeworks/domain/entities/homework_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../pages/submit_homework_page.dart';
import '../../../../user/presentation/bloc/user_auth_bloc.dart';

class HomeworkCard extends StatelessWidget {
  final HomeworkEntity homework;
  final String courseTitle;

  HomeworkCard({
    Key key,
    @required this.homework,
    @required this.courseTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // can be used later, don't delete!
    final _userAuthState = context.watch<UserAuthBloc>().state;

    // we need toString() method as it's a list of strings
    final _isSubmitted =
        homework.submittedHomeworks.contains(_userAuthState.id.toString());
    final _dueDate = DateTime.fromMillisecondsSinceEpoch(homework.dueDate);
    final _jifDate = Jiffy(_dueDate);

    return Card(
      color: Color(0xff5F36DA),
      child: ListTile(
        leading: Text(homework.title),
        title: Column(
          children: [
            SizedBox(height: 4),
            Text('due date'),
            SizedBox(height: 4),
            Text(_jifDate.yMMMdjm),
          ],
        ),
        trailing: IconButton(
          icon: _isSubmitted
              ? Icon(Feather.edit_2)
              : Icon(MaterialIcons.arrow_forward),
          onPressed: () => Get.to(
            () => SubmitHomeworkPage(
              homework: homework,
              courseTitle: courseTitle,
              isSubmitted: _isSubmitted,
            ),
          ),
        ),
      ),
    );
  }
}
