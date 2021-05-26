import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../user/domain/entites/user.dart';
import '../../../../user/presentation/bloc/user_auth_bloc.dart';

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
        body: BlocBuilder<UserAuthBloc, UserAuthState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: widget.submittedUsers.length,
              itemBuilder: (context, index) {
                final userId = widget.submittedUsers[index];
                state.users.forEach((element) {
                  if (element.id == userId) {
                    newList.add(element);
                  }
                });

                return Text(newList[index].fullName!);
              },
            );
          },
        ),
      ),
    );
  }
}
