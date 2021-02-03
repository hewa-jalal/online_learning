import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class RoleCard extends StatelessWidget {
  final String roleAsset;
  final double rightMargin;
  final double bottomMargin;
  const RoleCard({
    Key key,
    @required this.roleAsset,
    @required this.rightMargin,
    @required this.bottomMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(15.0),
            splashColor: const Color(0xff304FFE),
            onTap: () {},
            child: Stack(
              children: [
                Positioned.fill(
                  top: 14,
                  left: 15,
                  child: Text(
                    roleAsset.capitalize(),
                    style: TextStyle(fontSize: 26.sp),
                  ),
                ),
                Positioned.fill(
                  right: rightMargin,
                  bottom: bottomMargin,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 66.0),
                    child: Lottie.asset(
                      'assets/lottie/$roleAsset.json',
                      width: double.infinity,
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
