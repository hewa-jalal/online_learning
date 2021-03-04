import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return BlocListener<UserAuthBloc, UserAuthState>(
      listener: (context, state) {
        state.maybeMap(
          userLoaded: (state) => Get.to(() => UserHomePage(user: state.user)),
          orElse: () => Text('error'),
        );
      },
      child: Column(
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
            onPressed: () => context
                .read<UserAuthBloc>()
                .add(UserAuthEvent.getUserById(id: userId)),
            child: Text('Get user'),
          )
        ],
      ),
    );
  }
}
