import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:online_learning/injection.dart';
import 'package:online_learning/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign in')),
      body: BlocProvider(
        create: (_) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
