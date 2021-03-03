import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/lecture_form_page.dart';
import 'package:online_learning/features/lectures/presentation/UI/pages/lectures_page.dart';
import 'package:online_learning/features/user/domain/entites/user.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key key,
    @required this.user,
    @required this.courseTitle,
  }) : super(key: key);

  final String courseTitle;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => Get.to(
      //   LectureFormPage(
      //     user: user,
      //     courseTitle: courseTitle,
      //   ),
      // ),
      onTap: () => Get.to(LecturesPage(courseTitle: courseTitle)),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(courseTitle),
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
    );
  }
}
