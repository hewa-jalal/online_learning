import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../domain/entites/user.dart';
import '../bloc/user_auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../forms/user_id_form.dart';
import 'user_home_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserForm extends StatefulWidget {
  const UserForm({
    Key? key,
  }) : super(key: key);

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  String userId = '';
  String password = '';
  late NameInput name;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _userAuthBloc = context.read<UserAuthBloc>();
    return BlocConsumer<UserAuthBloc, UserAuthState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (left) => FlushbarHelper.createError(
                  message: left.message)
                ..show(context),
              (user) => Get.to(
                () => UserHomePage(
                  user: state.user,
                ),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: SafeArea(
            child: Scaffold(
              body: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 250.0,
                        child: TyperAnimatedTextKit(
                          text: ['Learn anywhere'],
                          textStyle: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Bobbers',
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                          speed: Duration(milliseconds: 40),
                        ),
                      ),
                      Lottie.asset('assets/lottie/intro.json'),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Enter your id',
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1.4),
                              ),
                            ),
                            onChanged: (val) {
                              userId = val.trim();
                              name = NameInput.dirty(value: val);
                            },
                            onFieldSubmitted: (val) =>
                                _formKey.currentState!.validate(),
                            validator: (val) {
                              print('validator => ${name.isValid}');
                              return name.isValid ? 'ok' : 'please enter an id';
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 0.03.sh),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Enter your password',
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1.4),
                              ),
                            ),
                            onChanged: (val) {
                              password = val.trim();
                              name = NameInput.dirty(value: val);
                            },
                            onFieldSubmitted: (val) =>
                                _formKey.currentState!.validate(),
                            validator: (val) {
                              print('validator => ${name.isValid}');
                              return name.isValid ? 'ok' : 'please enter an id';
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 0.04.sh),
                      SizedBox(
                        width: 0.8.sw,
                        child: ElevatedButton(
                          onPressed: () => _userAuthBloc.add(
                            UserAuthEvent.getUserById(
                              id: int.parse(userId),
                              password: password,
                            ),
                          ),
                          child: Text('Get user'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
