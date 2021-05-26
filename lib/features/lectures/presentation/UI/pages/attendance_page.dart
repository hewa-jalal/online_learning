import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/submit_homework_page.dart';
import '../../../../user/domain/entites/user.dart';
import '../../../../user/presentation/bloc/user_auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendancePage extends StatefulWidget {
  final List<String> submittedUsers;

  const AttendancePage({
    Key? key,
    required this.submittedUsers,
  }) : super(key: key);

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  List<UserEntity> newList = [];
  @override
  Widget build(BuildContext context) {
    final userBloc = context.read<UserAuthBloc>();
    if (ModalRoute.of(context)!.isCurrent) {
      userBloc.add(UserAuthEvent.getAllUsers());
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Attended Students'),
        ),
        body: BlocBuilder<UserAuthBloc, UserAuthState>(
          builder: (context, state) {
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: APP_PURPlE,
                thickness: 1.8,
              ),
              itemCount: widget.submittedUsers.length,
              itemBuilder: (context, index) {
                final userId = widget.submittedUsers[index];
                state.users.forEach((element) {
                  if (element.id == userId) {
                    newList.add(element);
                  }
                });

                return ListTile(
                  leading: Text(
                    newList[index].fullName!,
                    style: TextStyle(fontSize: 18.sp),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
