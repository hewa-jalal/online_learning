import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:nil/nil.dart';
import '../../../../homeworks/domain/entities/homework_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../pages/submit_homework_page.dart';
import '../../../../user/presentation/bloc/user_auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeworkCard extends StatelessWidget {
  final HomeworkEntity homework;
  final String courseTitle;

  HomeworkCard({
    Key? key,
    required this.homework,
    required this.courseTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _userAuthState = context.watch<UserAuthBloc>().state;

    // we need toString() method as it's a list of strings
    final _isSubmitted = homework.submittedHomeworks!
        .contains(_userAuthState.user.id.toString());
    final _dueDate = DateTime.fromMillisecondsSinceEpoch(homework.dueDate!);
    final _jifDate = Jiffy(_dueDate);
    return ExpansionTileCard(
      contentPadding: EdgeInsets.only(left: 8.0, right: 8.0),
      // margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      // initialPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
      baseColor: Colors.grey.withOpacity(0.2),
      expandedTextColor: Color(0xff5F36DA),
      expandedColor: Colors.grey.withOpacity(0.2),
      shadowColor: Colors.transparent,
      title: Text(homework.title!),
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: SelectableText(
            homework.description!.isEmpty
                ? 'this homework has no description'
                : homework.description!,
          ),
        ),
        Divider(color: APP_PURPlE, thickness: 1.5),
        SizedBox(height: 4.h),
        ListTile(
          hoverColor: Colors.red,
          leading: Column(
            children: [
              Text('due date'),
              Text(_jifDate.yMMMdjm),
            ],
          ),
          trailing: _userAuthState.user.role == 'teacher'
              ? nil
              : InkWell(
                  onTap: () => Get.to(
                    () => SubmitHomeworkPage(
                      homework: homework,
                      courseTitle: courseTitle,
                      isSubmitted: _isSubmitted,
                    ),
                  ),
                  child: _userAuthState.user.role == 'teacher'
                      ? nil
                      : Text(
                          _isSubmitted ? 'Edit' : 'Submit',
                          style: TextStyle(
                            color: APP_PURPlE,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
        ),
      ],
    );
  }
}
