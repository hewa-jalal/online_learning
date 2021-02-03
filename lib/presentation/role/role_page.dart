import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learning/presentation/role/widgets/role_card.dart';

class RolePage extends StatelessWidget {
  const RolePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0.h, bottom: 2.0),
                child: Text(
                  'Choose your role',
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
              const RoleCard(
                roleAsset: 'student',
                rightMargin: -15,
                bottomMargin: -3,
              ),
              const RoleCard(
                roleAsset: 'teacher',
                rightMargin: -1,
                bottomMargin: -20,
              ),
              const SizedBox(height: 10),
              // RaisedButton(
              //   onPressed: () {},
              //   child: Text('Continue'),
              //   color: const Color(0xff304FFE),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
