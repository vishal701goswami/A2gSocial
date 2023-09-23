import 'package:arghaapp/Login.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Reelspage extends StatefulWidget {
  const Reelspage({super.key});

  @override
  State<Reelspage> createState() => _ReelspageState();
}

class _ReelspageState extends State<Reelspage> {
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: VideoWidget()),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
            child: const Center(
              child: Text('page 2'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.yellow,
            child: const Center(
              child: Text('page 3'),
            ),
          ),
        ],
      ),
    );
  }
}

class VideoWidget extends StatefulWidget {
  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/habibi.mp4')
      ..initialize().then((_) {
        _controller.setVolume(0.0);
        _controller.setLooping(true);
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? Stack(
              alignment: Alignment.bottomCenter,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    return SizedBox.expand(
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: SizedBox(
                          width: constraints.maxWidth *
                              _controller.value.aspectRatio,
                          height: constraints.maxHeight,
                          child: VideoPlayer(_controller),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          : const CircularProgressIndicator(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
