import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../lectures/presentation/UI/pages/submit_homework_page.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.courseTitle,
    required this.onTap,
  }) : super(key: key);

  final String courseTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      color: APP_PURPlE,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 85.h,
          child: Center(
            child: Text(
              courseTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22.sp),
            ),
          ),
        ),
      ),
    );
  }
}
