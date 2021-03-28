import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:online_learning/features/homeworks/domain/entities/homework_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/homeworks/presentation/bloc/homework_bloc.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';

class HomeworkCard extends StatelessWidget {
  final HomeworkEntity homework;
  HomeworkCard({
    Key key,
    @required this.homework,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userAuthState = context.watch<UserAuthBloc>().state;
    var isSubmitted = homework.submittedHomeworks.contains('222');
    print('homework card => ${homework.submittedHomeworks}');
    final dueDate = DateTime.fromMillisecondsSinceEpoch(homework.dueDate);
    final jifDate = Jiffy(dueDate);
    return Card(
      color: Color(0xff5F36DA),
      child: ListTile(
        leading: Text(homework.title),
        title: Column(
          children: [
            SizedBox(height: 4),
            Text('due date'),
            SizedBox(height: 4),
            Text(jifDate.yMMMdjm),
          ],
        ),
        // trailing: Icon(MaterialIcons.arrow_forward),
        trailing: Checkbox(
          value: isSubmitted,
          onChanged: (val) {
            print('switch userId => ${userAuthState.id}');
            context.read<HomeworkBloc>().add(
                  HomeworkEvent.submitHomework(
                    userId: '222',
                    fileUrl: 'fileUrl',
                    note: 'note',
                    homeworkTitle: homework.title,
                    submitDate: DateTime.now().millisecondsSinceEpoch,
                  ),
                );
          },
        ),
      ),
    );
  }
}
