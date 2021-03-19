import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/user/presentation/pages/user_home_page.dart';

class UserForm extends StatefulWidget {
  const UserForm({
    Key key,
  }) : super(key: key);

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _controller = TextEditingController();
  int userId = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserAuthBloc, UserAuthState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: Center(
                child: TextField(
                  controller: _controller,
                  onChanged: (val) => userId = int.parse(val),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Get user by id'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<UserAuthBloc>()
                    .add(UserAuthEvent.getUserById(id: userId));
                Get.to(
                  () => UserHomePage(
                    user: UserEntity(
                      id: state.id.toString(),
                      fullName: state.fullName,
                      dept: state.dept,
                      role: state.role,
                      stage: state.stage,
                      lastSeenInEpoch: state.lastSeenInEpoch,
                    ),
                  ),
                );
              },
              child: Text('Get user'),
            )
          ],
        );
      },
    );
  }
}
