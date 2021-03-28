import 'package:flutter/material.dart';

import '../../../domain/entities/lecture_entity.dart';
import '../../bloc/lecture_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LectureCard extends StatelessWidget {
  final LectureEntity lecture;
  final String courseTitle;
  LectureCard({
    Key key,
    @required this.lecture,
    @required this.courseTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final lectureBloc = context.read<LectureBloc>();
    var isSubmitted = lecture.submittedUsers.contains('ASmxMarJL3i0rxdhMO8W');

    print('lecture card ====> ${lecture.submittedUsers}');

    return ExpansionTile(
      childrenPadding: EdgeInsets.only(left: 8.0, right: 8.0),
      title: Text(lecture.title),
      children: [
        SelectableText(
          'dolor sit amet, consectetur adipiscing elit. Quisque quis congue metus, ac tempus eros. Nunc tincidunt eros arcu, ac dictum nulla convallis sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo pretium leo, ac dictum lacus pellentesque quis. Fusce suscipit, orci eget venenatis dignissim, purus turpis imperdiet velit, vitae ullamcorper lectus libero eget eros.',
        ),
        ListTile(
          hoverColor: Colors.red,
          leading: Icon(Icons.picture_as_pdf_outlined),
          title: Row(
            children: [
              Text('file'),
              Spacer(),
              InkWell(
                onTap: () => lectureBloc.add(
                  LectureEvent.downloadLecture(
                    fileUrl: lecture.fileUrl,
                    lectureTitle: lecture.title,
                    courseTitle: courseTitle,
                  ),
                ),
                child: Icon(Icons.download_outlined),
              ),
            ],
          ),
          trailing: Checkbox(
            value: isSubmitted,
            activeColor: Color(0xff5F36DA),
            onChanged: (val) {},
          ),
        ),
      ],
    );
  }
}
