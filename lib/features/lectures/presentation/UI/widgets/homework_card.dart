import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/homeworks/presentation/bloc/homework_bloc.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/submit_homework_page.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';

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

    final _isSubmitted = homework.submittedHomeworks.contains('222');
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
            // Text(jifDate.yMMMdjm),
          ],
        ),
        trailing: IconButton(
          icon: Icon(MaterialIcons.arrow_forward),
          onPressed: () => Get.to(
            () => SubmitHomeworkPage(
              homework: homework,
              courseTitle: courseTitle,
            ),
          ),
        ),
      ),
    );
  }
}
