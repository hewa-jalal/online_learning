import 'package:flutter/material.dart';

class LectureCard extends StatelessWidget {
  final String courseTitle;

  const LectureCard({
    Key key,
    @required this.courseTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(courseTitle),
      children: [Text('g')],
    );
  }
}
