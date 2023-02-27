import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

///   create a Privacy_page and these child tabs
///  (1)Privacy account switch
///   (2)Posts tab
///    (3)Mentions tab
///     (4)Story tab
///      (5)Activity Status tab
///       (6)Blocked accounts tab
///        (7)Mouted accounts tab
///         (8)Accounts you follow tab
///
///
class Privacy_page extends StatefulWidget {
  const Privacy_page({super.key});

  @override
  State<Privacy_page> createState() => _Privacy_pageState();
}

class _Privacy_pageState extends State<Privacy_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Privacy", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            leading: Text("Account privacy",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                )),
          ),
          const ListTile(
            leading: Icon(
              Icons.lock_outline,
              size: 30,
              color: Colors.black,
            ),
            title: Text(
              "Privacy account",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Private_account(),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(height: 1, color: const Color.fromARGB(255, 211, 211, 211)),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const Posts_tab()));
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: Icon(
                  Icons.add_box_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                title: Text("Posts",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const Mention_tab()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.alternate_email_outlined,
                size: 30,
                color: Colors.black,
              ),
              title: Text("Mentions",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const Story_tab()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.history_outlined,
                size: 30,
                color: Colors.black,
              ),
              title: Text("Story",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const Activity_status()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.person_outline,
                size: 30,
                color: Colors.black,
              ),
              title: Text("Activity Status",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(height: 1, color: const Color.fromARGB(255, 211, 211, 211)),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const Blocked_accounts()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.block_outlined,
                size: 30,
                color: Colors.black,
              ),
              title: Text("Blocked accounts",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const Mouted_accounts()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.notifications_off_outlined,
                size: 30,
                color: Colors.black,
              ),
              title: Text("Mouted accounts",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const Accounts_you_follow()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.people_outline,
                size: 30,
                color: Colors.black,
              ),
              title: Text("Accounts you follow",
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
class Private_account extends StatefulWidget {
  const Private_account({super.key});

  @override
  State<Private_account> createState() => _Private_accountState();
}

class _Private_accountState extends State<Private_account> {
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

///create a Posts_tab page
///
///
///
class Posts_tab extends StatefulWidget {
  const Posts_tab({super.key});

  @override
  State<Posts_tab> createState() => _Posts_tabState();
}

class _Posts_tabState extends State<Posts_tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text("Posts", style: TextStyle(color: Colors.black)),
        ),
        body: ListView(
          children: [
            const ListTile(
              leading: Text("Likes and Views",
                  style: TextStyle(fontWeight: FontWeight.w600)),
            ),
            const ListTile(
              leading: Text("Hide likes"),
              trailing: hide_switch(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 1, color: const Color.fromARGB(255, 211, 211, 211)),
            const ListTile(
              leading: Text("Who can tag you",
                  style: TextStyle(fontWeight: FontWeight.w600)),
            ),
            tag_you(),
          ],
        ));
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
class hide_switch extends StatefulWidget {
  const hide_switch({super.key});

  @override
  State<hide_switch> createState() => _hide_switchState();
}

class _hide_switchState extends State<hide_switch> {
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

///
///widget create
///tag_you tab
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
class tag_you extends StatefulWidget {
  const tag_you({super.key});

  @override
  State<tag_you> createState() => _tag_youState();
}

class _tag_youState extends State<tag_you> {
  String _verticalGroupValue = "Requests";

  final _status = ["Everyone", "People You Follow", "NO One"];
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
        ]);
  }
}

///
///create Mention tab page
///add class  Allow_mentions_from()
///
class Mention_tab extends StatefulWidget {
  const Mention_tab({super.key});

  @override
  State<Mention_tab> createState() => _Mention_tabState();
}

class _Mention_tabState extends State<Mention_tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text("Mentions", style: TextStyle(color: Colors.black)),
        ),
        body: ListView(
          children: const [
            SizedBox(
              height: 10,
            ),
            Allow_mentions_from()
          ],
        ));
  }
}

///
///create Allow mention form
///RadioGroup<String>.builder(
///            groupValue: _verticalGroupValue,
///         onChanged: (value) => setState(() {
///        _verticalGroupValue = value ?? '';
///   }),
///items: _status,
///            itemBuilder: (item) => RadioButtonBuilder(
///           item,
///      ),
///        fillColor: Colors.blue,
///   ),
///
///
class Allow_mentions_from extends StatefulWidget {
  const Allow_mentions_from({super.key});

  @override
  State<Allow_mentions_from> createState() => _Allow_mentions_fromState();
}

class _Allow_mentions_fromState extends State<Allow_mentions_from> {
  String _verticalGroupValue = "Requests";

  final _status = ["Everyone", "People You Follow", "NO One"];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Text("Allow @mentions From",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
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
        ]);
  }
}

///
/// create story tab page
///
///
///
class Story_tab extends StatefulWidget {
  const Story_tab({super.key});

  @override
  State<Story_tab> createState() => _Story_tabState();
}

class _Story_tabState extends State<Story_tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text("Story", style: TextStyle(color: Colors.black)),
        ),
        body: ListView(
          children: [
            const ListTile(
              leading: Text("Saving",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            const ListTile(
              leading: Text("Save story to Gallery"),
              trailing: save_to_Archive_switch(),
            ),
            const ListTile(
              leading: Text(
                "Automatically ave your story to your phone's gallery.",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            const ListTile(
              leading: Text("Save story to Archive"),
              trailing: save_to_Archive_switch(),
            ),
            const ListTile(
              leading: Text(
                "Automatically ave your story to your archive so you don't have to save it to your phone.\n Only you can see your archive.",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 1,
              color: const Color.fromARGB(255, 212, 212, 212),
            ),
            const ListTile(
              leading: Text("Sharing",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            const ListTile(
              leading: Text("Allow others to share your story"),
              trailing: save_to_Archive_switch(),
            ),
            const ListTile(
              leading: Text(
                "Let people you @mentions share your story to their story or create with it.",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            const ListTile(
              leading: Text("Allow sharing to messages"),
              trailing: save_to_Archive_switch(),
            ),
            const ListTile(
              leading: Text(
                "Let your followers share photos and videos from your story in a message. Only your\nFollower can see what's shared.",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            const ListTile(
              leading: Text("Share your story to Facebook"),
              trailing: save_to_Archive_switch(),
            ),
            const ListTile(
              leading: Text(
                "Automatically share your Instagram story as your Facebook story.",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
          ],
        ));
  }
}

///
///Save to archive switch
///Switch(
// This bool value toggles the switch.
///     value: light,
///     activeColor: Colors.blue,
///     onChanged: (bool value) {
// This is called when the user toggles the switch.
///       setState(() {
///         light = value;
///      });
///     },
///   );
///

class save_to_Archive_switch extends StatefulWidget {
  const save_to_Archive_switch({super.key});

  @override
  State<save_to_Archive_switch> createState() => _save_to_Archive_switchState();
}

class _save_to_Archive_switchState extends State<save_to_Archive_switch> {
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

///
///create a Activity_status page
///
///
class Activity_status extends StatefulWidget {
  const Activity_status({super.key});

  @override
  State<Activity_status> createState() => _Activity_statusState();
}

class _Activity_statusState extends State<Activity_status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Activity Status",
            style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Text(
              "Show Activity Status",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: save_to_Archive_switch(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Allow accounts you follow and anyone you message to\nsee when you were last active or are currently active on\nInstagram apps.When this is turned off,you won't be\nable to see the activity status of other accounts.",
              style: TextStyle(color: Color.fromARGB(255, 148, 148, 148)),
            ),
          )
        ],
      ),
    );
  }
}

///
///create a Blocked_accounts page
///ListView.builder(
///         physics: const NeverScrollableScrollPhysics(),
///         shrinkWrap: true,
///         itemCount: 25,
///         itemBuilder: (context, index) {
///           return const Block_accounts();
///        }),
///
class Blocked_accounts extends StatefulWidget {
  const Blocked_accounts({super.key});

  @override
  State<Blocked_accounts> createState() => _Blocked_accountsState();
}

class _Blocked_accountsState extends State<Blocked_accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Blocked accounts",
            style: TextStyle(color: Colors.black)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
              size: 35,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 25,
          itemBuilder: (context, index) {
            return const Block_accounts();
          }),
    );
  }
}

///
///create a Block_accounts page
///
///
///
class Block_accounts extends StatefulWidget {
  const Block_accounts({super.key});

  @override
  State<Block_accounts> createState() => _Block_accountsState();
}

class _Block_accountsState extends State<Block_accounts> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/image/Snapchat-1869072314.jpg'),
          radius: 30.0,
        ),
        title: const Text('adelle_klarke',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
        subtitle: const Text('Yeah, that seems okay',
            style: TextStyle(fontSize: 14.0, color: Colors.grey)),
        trailing: Container(
          height: 37,
          width: 85,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 211, 211, 211),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(child: Text("Unblock")),
        ));
  }
}

///
///create a Mouted_accounts
///ListView.builder(
///         physics: const NeverScrollableScrollPhysics(),
///         shrinkWrap: true,
///         itemCount: 25,
///         itemBuilder: (context, index) {
///           return const Muted_accounts();
///         }),
///
///
class Mouted_accounts extends StatefulWidget {
  const Mouted_accounts({super.key});

  @override
  State<Mouted_accounts> createState() => _Mouted_accountsState();
}

class _Mouted_accountsState extends State<Mouted_accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title:
            const Text("Muted accounts", style: TextStyle(color: Colors.black)),
      ),
      body: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 25,
          itemBuilder: (context, index) {
            return const Muted_accounts();
          }),
    );
  }
}

///
///create a Muted_accounts page
///
///
///
class Muted_accounts extends StatefulWidget {
  const Muted_accounts({super.key});

  @override
  State<Muted_accounts> createState() => _Muted_accountsState();
}

class _Muted_accountsState extends State<Muted_accounts> {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/image/Snapchat-1869072314.jpg'),
        radius: 30.0,
      ),
      title: Text('adelle_klarke',
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
      subtitle: Text('Story muted',
          style: TextStyle(fontSize: 14.0, color: Colors.grey)),
    );
  }
}

class Accounts_you_follow extends StatefulWidget {
  const Accounts_you_follow({super.key});

  @override
  State<Accounts_you_follow> createState() => _Accounts_you_followState();
}

class _Accounts_you_followState extends State<Accounts_you_follow> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
