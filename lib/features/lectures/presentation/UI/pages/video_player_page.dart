import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart' as open;
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class VideoPlayerPage extends StatelessWidget {
  final String videoUrl;

  const VideoPlayerPage({
    Key key,
    @required this.videoUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BetterPlayer.network(
          'https://firebasestorage.googleapis.com/v0/b/online-learning-810f3.appspot.com/o/lectures%2Fvideo%20test?alt=media&token=2eb40bd7-9435-4033-af20-e32dbe2e8e6d',
          betterPlayerConfiguration: BetterPlayerConfiguration(
            aspectRatio: 16 / 9,
          ),
        ),
        // child: ElevatedButton(
        //   onPressed: () => url_launcher.launch(
        //       'https://firebasestorage.googleapis.com/v0/b/online-learning-810f3.appspot.com/o/2021-02-09%2010%3A18%3A33.795145?alt=media&token=217c80ba-d1b1-4b54-822d-bba6eef39f56'),
        //   child: Text('Open file'),
        // ),
      ),
    );
  }
}
