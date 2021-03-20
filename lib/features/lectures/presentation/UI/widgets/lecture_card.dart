import 'package:flutter/material.dart';

import '../../bloc/lecture_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LectureCard extends StatelessWidget {
  final String lectureTitle;

  const LectureCard({
    Key key,
    @required this.lectureTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final lectureBloc = context.read<LectureBloc>();
    return ExpansionTile(
      childrenPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
      title: Text(lectureTitle),
      children: [
        SelectableText(
          'dolor sit amet, consectetur adipiscing elit. Quisque quis congue metus, ac tempus eros. Nunc tincidunt eros arcu, ac dictum nulla convallis sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo pretium leo, ac dictum lacus pellentesque quis. Fusce suscipit, orci eget venenatis dignissim, purus turpis imperdiet velit, vitae ullamcorper lectus libero eget eros.',
        ),
        CheckboxListTile(
          secondary: Icon(Icons.explicit),
          title: Text('pdf file'),
          value: false,
          onChanged: (val) {
            print('switch onChange');
            lectureBloc.add(
              LectureEvent.submitUser(
                lectureTitle: lectureTitle,
                courseTitle: 'AI',
                userId: '12',
              ),
            );
          },
        )
      ],
    );
  }
}
