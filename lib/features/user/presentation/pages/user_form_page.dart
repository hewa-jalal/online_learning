import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/chat/presentation/ui/pages/chat_page.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/lecture_form_page.dart';
import 'package:online_learning/features/lectures/presentation/bloc/lecture_bloc.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:online_learning/features/user/presentation/bloc/user_auth_bloc.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserFormPage extends StatefulWidget {
  @override
  _UserFormPageState createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserAuthBloc, UserAuthState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: state.map(
              initial: (_) => UserForm(),
              userLoaded: (userState) => UserLoadedWidget(user: userState.user),
              userError: (_) => Text('User error'),
              usersLoaded: (_) => Text('usersLoaded'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => context
                  .read<LectureBloc>()
                  .add(LectureEvent.getAllLectures()),
              child: Icon(Icons.all_inbox),
            ),
          ),
        );
      },
    );
  }
}

class UserLoadedWidget extends StatelessWidget {
  final UserEntity user;
  const UserLoadedWidget({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        user.fullName,
                        // textAlign: TextAlign.right,
                      ),
                      ElevatedButton(
                        onPressed: () => Get.to(ChatPage(userEntity: user)),
                        child: Text('Go to chat page'),
                      )
                    ],
                  );
                },
              ),
              CircleAvatar(child: Icon(Icons.person)),
            ],
          ),
        ),
        InkWell(
          onTap: () => Get.to(LectureFormPage(user: user)),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // CircleAvatar(child: Icon(Icons.person)),
                Text('Mobile Development'),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SleekCircularSlider(
                        appearance: CircularSliderAppearance(
                          size: 80.h,
                          customColors: CustomSliderColors(
                            progressBarColor: Colors.orange,
                            dotColor: Colors.transparent,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        // Text(
        //   'User loaded with id: ${user.id} and role ${user.fullName.split(',')[0]}',
        // ),
      ],
    );
  }
}

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
          },
          child: Text('Get user'),
        )
      ],
    );
  }
}
