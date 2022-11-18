import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoContent extends StatefulWidget {
  final String videoURL;

  const VideoContent({
    super.key,
    required this.videoURL,
  });

  @override
  State<VideoContent> createState() => _VideoContentState();
}

class _VideoContentState extends State<VideoContent> {
  late VideoPlayerController _controller;

  bool _isPlaying = false;
  double _playbackSpeed = 1.0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(this.widget.videoURL)
      ..initialize().then((_) {
        setState(() {});
      });

    _controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Column(
            children: [
              SizedBox(
                height: 300.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                    SizedBox(width: 12.0),
                    Column(
                      children: [
                        SizedBox(
                          width: 112.0,
                          child: ElevatedButton.icon(
                            onPressed: () => _isPlaying
                                ? _controller.pause().then(
                                      (_) => setState(() => _isPlaying = false),
                                    )
                                : _controller.play().then(
                                      (_) => setState(() => _isPlaying = true),
                                    ),
                            label: SizedBox(
                              width: 92.0,
                              child: Text(_isPlaying ? 'Pause' : 'Play'),
                            ),
                            icon: Icon(
                              _isPlaying
                                  ? CupertinoIcons.pause_solid
                                  : CupertinoIcons.play_arrow_solid,
                            ),
                          ),
                        ),
                        SizedBox(height: 24.0),
                        SizedBox(
                          width: 112.0,
                          child: ElevatedButton.icon(
                            onPressed: () => _controller.pause().then(
                              (_) {
                                _controller.seekTo(Duration.zero);
                                setState(() => _isPlaying = false);
                              },
                            ),
                            label: SizedBox(
                              width: 92.0,
                              child: Text('Stop'),
                            ),
                            icon: Icon(
                              CupertinoIcons.stop_fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 24.0),
                        SizedBox(
                          width: 112.0,
                          child: ElevatedButton.icon(
                            onPressed: () => _playbackSpeed == 1.0
                                ? _controller.setPlaybackSpeed(0.25).then(
                                      (_) =>
                                          setState(() => _playbackSpeed = 0.25),
                                    )
                                : _controller.setPlaybackSpeed(1.0).then(
                                      (_) =>
                                          setState(() => _playbackSpeed = 1.0),
                                    ),
                            label: SizedBox(
                              width: 92.0,
                              child: Text(
                                  _playbackSpeed == 1.0 ? 'SlowMo' : 'Normal'),
                            ),
                            icon: Icon(
                              _playbackSpeed == 1.0
                                  ? CupertinoIcons.slowmo
                                  : CupertinoIcons.capslock_fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Listener(
                behavior: HitTestBehavior.opaque,
                onPointerMove: (event) => _controller.seekTo(
                  Duration(
                    milliseconds: (_controller.value.duration.inMilliseconds *
                            (event.localPosition.dx / 300))
                        .toInt(),
                  ),
                ),
                onPointerDown: (event) => _controller.seekTo(
                  Duration(
                    milliseconds: (_controller.value.duration.inMilliseconds *
                            (event.localPosition.dx / 300))
                        .toInt(),
                  ),
                ),
                child: SizedBox(
                  width: 300.0,
                  height: 24.0,
                  child: Align(
                    child: LinearProgressIndicator(
                      value: _controller.value.position.inMilliseconds > 0
                          ? _controller.value.position.inMilliseconds /
                              _controller.value.duration.inMilliseconds
                          : 0,
                    ),
                  ),
                ),
              ),
            ],
          )
        : Container();
  }
}
