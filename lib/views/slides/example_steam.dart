import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/video_content.dart';

class ExampleSteam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: VideoContent(
        videoURL: 'https://assets.kounex.com/flutter/examples/steam.mov',
      ),
    );
  }
}
