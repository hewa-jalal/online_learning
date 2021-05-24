import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 6.0),
        color: Color(0xffA5A6AA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              courseTitle,
              // textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22.sp),
            ),
            SizedBox(height: 0.12.sh),
            // LayoutBuilder(
            //   builder: (context, constraints) {
            //     return Padding(
            //       padding: const EdgeInsets.only(top: 8.0),
            //       child: SleekCircularSlider(
            //         appearance: CircularSliderAppearance(
            //           size: 80.h,
            //           customColors: CustomSliderColors(
            //             progressBarColor: Color(0xff5F36DA),
            //             dotColor: Colors.transparent,
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
