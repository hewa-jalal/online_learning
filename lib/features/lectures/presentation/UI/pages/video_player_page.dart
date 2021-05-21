import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:url_launcher/url_launcher.dart' as url_launcher;

class VideoPlayerPage extends StatefulWidget {
  final String? videoUrl;

  const VideoPlayerPage({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlickVideoPlayer(
          flickManager: flickManager,
        ),
        // child: BetterPlayer.network(
        //   'https://firebasestorage.googleapis.com/v0/b/online-learning-810f3.appspot.com/o/lectures%2Fvideo%20test?alt=media&token=2eb40bd7-9435-4033-af20-e32dbe2e8e6d',
        //   betterPlayerConfiguration: BetterPlayerConfiguration(
        //     aspectRatio: 16 / 9,
        //   ),
        // ),
        // child: ElevatedButton(
        //   onPressed: () => url_launcher.launch(
        //       'https://firebasestorage.googleapis.com/v0/b/online-learning-810f3.appspot.com/o/2021-02-09%2010%3A18%3A33.795145?alt=media&token=217c80ba-d1b1-4b54-822d-bba6eef39f56'),
        //   child: Text('Open file'),
        // ),
      ),
    );
  }
}
