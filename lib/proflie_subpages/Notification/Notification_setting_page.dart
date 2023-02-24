import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

///   create a notification_tab page and these child tabs
///    (1) Pause all switch
///     (2) Following and  followes
///       (3) Messages
///         (4) Call
///           (5) Live and reels
///
///

class Notification_tab extends StatefulWidget {
  const Notification_tab({super.key});

  @override
  State<Notification_tab> createState() => _Notification_tabState();
}

class _Notification_tabState extends State<Notification_tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Notification settings",
            style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text(
              "Pause all",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Push_switch(),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const Following_and_followers()));
            },
            child: const ListTile(
              leading: Text("Following and followers",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const Messages()));
            },
            child: const ListTile(
              leading: Text("Messages",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const Calls()));
            },
            child: const ListTile(
              leading: Text("Calls",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const Live_and_reels()));
            },
            child: const ListTile(
              leading: Text("Live and reels",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}

/// create a switch
///
///
/// Switch(
// This bool value toggles the switch.
///value: light,
///activeColor: Colors.blue,
///onChanged: (bool value) {
// This is called when the user toggles the switch.
///setState(() {
///  light = value;
///});
/// },
/// );
///
class Push_switch extends StatefulWidget {
  const Push_switch({super.key});

  @override
  State<Push_switch> createState() => _Push_switchState();
}

class _Push_switchState extends State<Push_switch> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.blue,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}

///Following and followers page and tabs
///  (1)Follower requests
///   (2)Accepted follow requests
///    (3)Mentions in bio
///
/// ListView(children: [
///          Follower_Requests(),
///         Accepted_Follower_Requests(),
///         Mentions_in_Bio()
///       ])

class Following_and_followers extends StatefulWidget {
  const Following_and_followers({super.key});

  @override
  State<Following_and_followers> createState() =>
      _Following_and_followersState();
}

class _Following_and_followersState extends State<Following_and_followers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text("Following and followers",
              style: TextStyle(color: Colors.black)),
        ),
        body: ListView(children: const [
          Follower_Requests(),
          Accepted_Follower_Requests(),
          Mentions_in_Bio()
        ]));
  }
}

///
///widget create
///Follower Requests tab
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),
///
///
class Follower_Requests extends StatefulWidget {
  const Follower_Requests({super.key});

  @override
  State<Follower_Requests> createState() => _Follower_RequestsState();
}

class _Follower_RequestsState extends State<Follower_Requests> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "on"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Follower Requests",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "John Appleseed (@johnappleseed) has requested to follow you.",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}

///
///widget create
///Accepted_Follower_Requests tab
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),
///
class Accepted_Follower_Requests extends StatefulWidget {
  const Accepted_Follower_Requests({super.key});

  @override
  State<Accepted_Follower_Requests> createState() =>
      _Accepted_Follower_RequestsState();
}

class _Accepted_Follower_RequestsState
    extends State<Accepted_Follower_Requests> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "on"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Accepted Follower Requests",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "John Appleseed (@johnappleseed) accepted your follow request.",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}

///
///widget create
///Mentions_in_Bio
///
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),

class Mentions_in_Bio extends StatefulWidget {
  const Mentions_in_Bio({super.key});

  @override
  State<Mentions_in_Bio> createState() => _Mentions_in_BioState();
}

class _Mentions_in_BioState extends State<Mentions_in_Bio> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "From People I Follow", "Form Everyone"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Mentions in Bio",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "johnapplessed mentioned you in their bio.",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}

///create Messages tabs
///   (1) Messages Requests
///    (2) Message
///     (3) Group Requests
/// ListView(children: const [
///         Message_Requests(),
///         Messages_tab(),
///       Group_Requests()
///    ])
///
///

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text("Messages", style: TextStyle(color: Colors.black)),
        ),
        body: ListView(children: const [
          Message_Requests(),
          Messages_tab(),
          Group_Requests()
        ]));
  }
}

///
///widget create
///Message_Requests tab
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),
///
///
class Message_Requests extends StatefulWidget {
  const Message_Requests({super.key});

  @override
  State<Message_Requests> createState() => _Message_RequestsState();
}

class _Message_RequestsState extends State<Message_Requests> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "on"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Message_Requests",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "johnappleseed wants to send you a message.",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}

///
///widget create
///Messages tab
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),
///
class Messages_tab extends StatefulWidget {
  const Messages_tab({super.key});

  @override
  State<Messages_tab> createState() => _Messages_tabState();
}

class _Messages_tabState extends State<Messages_tab> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "on"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Messages",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "johnappleseed send you a message.",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}

///
///widget create
///Group_Requests
///
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),

class Group_Requests extends StatefulWidget {
  const Group_Requests({super.key});

  @override
  State<Group_Requests> createState() => _Group_RequestsState();
}

class _Group_RequestsState extends State<Group_Requests> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "on"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Group Requests",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "johnapplessed wants to add johnapplessed to your group.",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}

///
///Create Calls tabs
/// (1) Video chats
///
///

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text("Messages", style: TextStyle(color: Colors.black)),
        ),
        body: ListView(children: const [
          Video_chats(),
        ]));
  }
}

///
///widget create
///Video Chats tab
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),
///
///
class Video_chats extends StatefulWidget {
  const Video_chats({super.key});

  @override
  State<Video_chats> createState() => _Video_chatsState();
}

class _Video_chatsState extends State<Video_chats> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "Form People I Follo", "Form Everyone"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Video Chats",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Incoming video chat from johnappleseed",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}

///create Live and reels tabs
///   (1) Original audio
///    (2) Live videos
///     (3) Recently uploaded reels
/// ListView(children: const [
///         Original_audio(),
///         Live_videos(),
///       Recently_uploaded_reels()
///    ])
///
///

class Live_and_reels extends StatefulWidget {
  const Live_and_reels({super.key});

  @override
  State<Live_and_reels> createState() => _Live_and_reelsState();
}

class _Live_and_reelsState extends State<Live_and_reels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text("Live and reels",
              style: TextStyle(color: Colors.black)),
        ),
        body: ListView(children: const [
          Original_audio(),
          Live_videos(),
          Recently_uploaded_reels()
        ]));
  }
}

///
///widget create
///Original_audio tab
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),
///
///
class Original_audio extends StatefulWidget {
  const Original_audio({super.key});

  @override
  State<Original_audio> createState() => _Original_audioState();
}

class _Original_audioState extends State<Original_audio> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "on"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Original audio",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "johnappleseed created a reel with your audio.",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}

///
///widget create
///Live_videos
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),
///
class Live_videos extends StatefulWidget {
  const Live_videos({super.key});

  @override
  State<Live_videos> createState() => _Live_videosState();
}

class _Live_videosState extends State<Live_videos> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "on"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Live Videos",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "johnappleseed started a live video.Watch it before it ends!",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}

///
///widget create
///Recently_uploaded_reels
///
///RadioGroup<String>.builder(
///             groupValue: _verticalGroupValue,
///             onChanged: (value) => setState(() {
///               _verticalGroupValue = value ?? '';
///             }),
///            items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///              item,
///           ),
///           fillColor: Colors.blue,
///       ),

class Recently_uploaded_reels extends StatefulWidget {
  const Recently_uploaded_reels({super.key});

  @override
  State<Recently_uploaded_reels> createState() =>
      _Recently_uploaded_reelsState();
}

class _Recently_uploaded_reelsState extends State<Recently_uploaded_reels> {
  String _verticalGroupValue = "Requests";

  final _status = ["off", "on"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Recently uploaded reels",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
          Column(children: <Widget>[
            RadioGroup<String>.builder(
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: Colors.blue,
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "johnapplessed,johndoe and janedoe recently shared new reels.",
              style: TextStyle(fontSize: 10),
            ),
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.grey)
        ]);
  }
}
