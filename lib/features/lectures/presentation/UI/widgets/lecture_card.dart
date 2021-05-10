import 'package:circular_check_box/circular_check_box.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../pages/submit_homework_page.dart';
import '../pages/video_player_page.dart';
import '../../../../user/presentation/bloc/user_auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/entities/lecture_entity.dart';
import '../../bloc/lecture_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:get/get.dart';

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
    final _lectureBloc = context.watch<LectureBloc>();
    final _userAuthState = context.watch<UserAuthBloc>().state;

    final isFileVideo = lecture.fileType.contains('video');

    final isSubmitted =
        lecture.submittedUsers.contains(_userAuthState.id.toString());

    return ExpansionTileCard(
      contentPadding: EdgeInsets.only(left: 8.0, right: 8.0),
      baseColor: Colors.transparent,
      expandedTextColor: Color(0xff5F36DA),
      expandedColor: Colors.transparent,
      shadowColor: Colors.transparent,
      // childrenPadding: EdgeInsets.only(left: 8.0, right: 8.0),
      title: Text(lecture.title),
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: SelectableText(
            'dolor sit amet, consectetur adipiscing elit. Quisque quis congue metus, ac tempus eros. Nunc tincidunt eros arcu, ac dictum nulla convallis sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo pretium leo, ac dictum lacus pellentesque quis. Fusce suscipit, orci eget venenatis dignissim, purus turpis imperdiet velit, vitae ullamcorper lectus libero eget eros.',
          ),
        ),
        ListTile(
          hoverColor: Colors.red,
          leading: Icon(
            MaterialCommunityIcons.file_video_outline,
            color: Color(0xff5F36DA),
            size: 34,
          ),
          title: Row(
            children: [
              Text('file'),
              Spacer(),
              InkWell(
                onTap: () => _lectureBloc.add(
                  LectureEvent.downloadLecture(
                    fileUrl: lecture.fileUrl,
                    lectureTitle: lecture.title,
                    courseTitle: courseTitle,
                  ),
                ),
                child: Icon(
                  Icons.download_outlined,
                  color: Color(0xff5F36DA),
                ),
              ),
              if (isFileVideo) ...[
                SizedBox(width: 0.05.sw),
                InkWell(
                  onTap: () {
                    Get.to(() => VideoPlayerPage(
                          videoUrl: lecture.fileUrl,
                        ));
                  },
                  child: Icon(
                    Icons.play_circle_filled_outlined,
                    color: APP_PURPlE,
                  ),
                ),
              ]
            ],
          ),
          trailing: CircularCheckBox(
            activeColor: Color(0xff5F36DA),
            value: isSubmitted,
            onChanged: (_) {
              _lectureBloc.add(
                LectureEvent.submitUser(
                  userId: _userAuthState.id.toString(),
                  courseTitle: courseTitle,
                  lectureTitle: lecture.title,
                ),
              );
              // to refresh the list
              _lectureBloc.add(
                LectureEvent.getAllLecturesByCourse(courseTitle: courseTitle),
              );
            },
          ),
        ),
      ],
    );
  }
}
