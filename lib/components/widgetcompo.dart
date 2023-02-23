import 'package:arghaapp/components/RoundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Column likeShareCommentSave() {
  return Column(
    children: [
      iconDetail(CupertinoIcons.heart, '354k'),
      const SizedBox(height: 25),
      iconDetail(CupertinoIcons.chat_bubble, '872'),
      const SizedBox(height: 25),
      iconDetail(CupertinoIcons.arrow_turn_up_right, ''),
      const SizedBox(height: 25),
      const Icon(CupertinoIcons.ellipsis_vertical,
          size: 22, color: Colors.white),
    ],
  );
}

Column iconDetail(IconData icon, String number) {
  return Column(
    children: [
      Icon(
        icon,
        size: 33,
        color: Colors.white,
      ),
      Text(
        '$number',
        style: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
      )
    ],
  );
}

class CommentWithPublisher extends StatefulWidget {
  @override
  _CommentWithPublisherState createState() => _CommentWithPublisherState();
}

class _CommentWithPublisherState extends State<CommentWithPublisher> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: const [
                Icon(CupertinoIcons.arrow_left, color: Colors.white),
                SizedBox(width: 20),
                Text(
                  'Reels',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(CupertinoIcons.camera, color: Colors.white),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 40.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    circleImage('', 30),
                    const SizedBox(width: 8.0),
                    const Text('indian music talent',
                        style: TextStyle(color: Colors.white)),
                    const SizedBox(width: 8.0),
                    Text(
                      'Follow',
                      style: textStyle,
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      'Tag someone special 😍 🔥 💡... ',
                      style: textStyle,
                    ),
                    Text(
                      'more',
                      style: greyText,
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Text(
                      'Anoop Shankar Tu Mile Dil Khile ',
                      style: textStyle,
                    ),
                    const Spacer(),
                    rectImage(
                        'https://images.pexels.com/photos/906052/pexels-photo-906052.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                        35)
                  ],
                ),
              ],
            ),
          )
        ],
      );

  TextStyle greyText = const TextStyle(
    color: Colors.white,
  );

  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 14,
  );
}
