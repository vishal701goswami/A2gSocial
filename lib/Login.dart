import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/animation.dart';
import 'package:sign_button/sign_button.dart';

class VideoWidget extends StatefulWidget {
  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video2.mp4')
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
                ScaleTransitionExample()
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

class ScaleTransitionExample extends StatefulWidget {
  _ScaleTransitionExampleState createState() => _ScaleTransitionExampleState();
}

class _ScaleTransitionExampleState extends State<ScaleTransitionExample>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(seconds: 3), vsync: this, value: 0.1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScaleTransition(
              scale: _animation,
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 250,
                      width: 400,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [login_tabs()],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ])),
        ],
      ),
    );
  }
}

class login_tabs extends StatefulWidget {
  const login_tabs({super.key});

  @override
  State<login_tabs> createState() => _login_tabsState();
}

class _login_tabsState extends State<login_tabs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: SignInButton(
                buttonType: ButtonType.facebook,
                btnText: 'Sign in with Facebook',
                width: 320,
                buttonSize: ButtonSize.large,
                onPressed: () {
                  print('click');
                }),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SignInButton(
                buttonType: ButtonType.google,
                width: 320,
                buttonSize: ButtonSize.large,
                onPressed: () {
                  print('click');
                }),
          ),
        ),
        Center(
          child: SignInButton(
              buttonType: ButtonType.apple,
              width: 320,
              buttonSize: ButtonSize.large,
              onPressed: () {
                print('click');
              }),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SignInButton(
                buttonType: ButtonType.mail,
                width: 320,
                buttonSize: ButtonSize.large,
                btnText: "Sign in with phone",
                onPressed: () {
                  print('click');
                }),
          ),
        ),
      ],
    );
  }
}
