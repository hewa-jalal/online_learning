import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_learning/features/user/presentation/pages/user_home_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class UserForm extends StatefulWidget {
  const UserForm({
    Key key,
  }) : super(key: key);

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  int userId = 0;
  @override
  Widget build(BuildContext context) {
    final userAuthBloc = context.read<UserAuthBloc>();
    return BlocBuilder<UserAuthBloc, UserAuthState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250.0,
              child: TyperAnimatedTextKit(
                text: ['Learn anywhere'],
                textStyle: TextStyle(fontSize: 30.0, fontFamily: "Bobbers"),
                textAlign: TextAlign.center,
                speed: Duration(milliseconds: 40),
              ),
            ),
            Lottie.asset('assets/lottie/work_from_home.json'),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter your id',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.4),
                    ),
                  ),
                  onChanged: (val) => userId = int.parse(val.trim()),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                userAuthBloc.add(UserAuthEvent.getUserById(id: userId));

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
              },
              child: Text('Get user'),
            )
          ],
        );
      },
    );
  }
}
