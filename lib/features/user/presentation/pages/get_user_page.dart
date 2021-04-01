import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/user/presentation/forms/user_id_form.dart';
import 'package:online_learning/features/user/presentation/pages/user_home_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserForm extends StatefulWidget {
  const UserForm({
    Key key,
  }) : super(key: key);

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  String userId = '';
  NameInput name;

  @override
  Widget build(BuildContext context) {
    final userAuthBloc = context.read<UserAuthBloc>();
    final _formKey = GlobalKey<FormState>();
    return BlocConsumer<UserAuthBloc, UserAuthState>(
      listener: (context, state) {
        if (state.userStatus == UserStatus.done) {
          Get.to(
            () => UserHomePage(
              user: UserEntity(
                id: state.id.toString(),
                fullName: state.fullName,
                dept: state.dept,
                role: state.role,
                stage: state.stage,
                lastSeenInEpoch: state.lastSeenInEpoch,
                isOnline: state.isOnline,
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: SafeArea(
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250.0,
                    child: TyperAnimatedTextKit(
                      text: ['Learn anywhere'],
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontFamily: "Bobbers",
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
                            _formKey.currentState.validate(),
                        // onSubmitted: (val) => print('formz => ${name.value}'),
                        validator: (val) {
                          print('validator => ${name.valid}');
                          return name.valid ? 'ok' : 'please enter an id';
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 0.04.sh),
                  SizedBox(
                    width: 0.8.sw,
                    child: ElevatedButton(
                      onPressed: () {
                        userAuthBloc.add(
                            UserAuthEvent.getUserById(id: int.parse(userId)));
                      },
                      child: Text('Get user'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.dialog(
                      Lottie.asset('assets/lottie/loading_animation.json'),
                    ),
                    child: Text('dialog animation test'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
