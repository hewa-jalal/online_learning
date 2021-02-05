import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/application/auth/bloc/authentication_bloc.dart';

class SimpleForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        print(state);
        return state.map(
          uninitialized: (_) => uninitializedState(context),
          authenticated: (user) => Text(user.userEntity.id),
        );
      },
    );
  }

  Widget uninitializedState(BuildContext context) {
    String value = '';
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextField(
                onChanged: (val) => value = val,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('pressed $value');
                context
                    .read<AuthenticationBloc>()
                    .add(AuthenticationEvent.authCheckRequested(id: value));
              },
              child: const Text('done'),
            )
          ],
        ),
      ),
    );
  }
}
