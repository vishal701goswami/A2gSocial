import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:arghaapp/call.dart';
// import 'package:arghaapp/message%20chat/MessageSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MessagesPageState extends State<MessagesPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("mr_das_here", style: TextStyle(color: Colors.black)),
        toolbarHeight: 90,
        actions: [search()],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text("Chats",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Tab(
              child: Text("Calls",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [message(), Call_page()],
      ),
    );
  }
}

class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            // onTap: () {
            //   Navigator.push(
            //       context,
            //       CupertinoPageRoute(
            //           builder: (context) => const Message_screeen()));
            // },
            child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                leading: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/image/Snapchat-1869072314.jpg'),
                  radius: 30.0,
                ),
                title: const Text('adelle_klarke',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
                subtitle: const Text('Yeah, that seems okay',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                trailing: SizedBox(
                  width: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.blue,
                            size: 20,
                          ),
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 27,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              leading: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/image/Snapchat-1869072314.jpg'),
                radius: 30.0,
              ),
              title: const Text('adelle_klarke',
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
              subtitle: const Text('Yeah, that seems okay',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey)),
              trailing: SizedBox(
                width: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 27,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              )),
          ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              leading: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/image/Snapchat-1869072314.jpg'),
                radius: 30.0,
              ),
              title: const Text('adelle_klarke',
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
              subtitle: const Text('Yeah, that seems okay',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey)),
              trailing: SizedBox(
                width: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.error,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 27,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Call_page extends StatefulWidget {
  const Call_page({super.key});

  @override
  State<Call_page> createState() => _Call_pageState();
}

class _Call_pageState extends State<Call_page> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/image/Snapchat-1869072314.jpg'),
          radius: 30.0,
        ),
        title: const Text('adelle_klarke',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.call_made_rounded,
              size: 18,
              color: Color.fromARGB(255, 33, 177, 38),
            ),
            Text('February 23, 9:56 PM',
                style: TextStyle(fontSize: 14.0, color: Colors.grey)),
          ],
        ),
        trailing: const Icon(
          Icons.call_rounded,
          size: 27,
          color: Colors.green,
        ),
      ),
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/image/Snapchat-1869072314.jpg'),
          radius: 30.0,
        ),
        title: const Text('adelle_klarke',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.call_made_rounded,
              size: 18,
              color: Color.fromARGB(255, 33, 177, 38),
            ),
            Text('February 23, 9:56 PM',
                style: TextStyle(fontSize: 14.0, color: Colors.grey)),
          ],
        ),
        trailing: const Icon(
          Icons.call_rounded,
          size: 27,
          color: Colors.green,
        ),
      ),
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/image/Snapchat-1869072314.jpg'),
          radius: 30.0,
        ),
        title: const Text('adelle_klarke',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.call_made_rounded,
              size: 18,
              color: Color.fromARGB(255, 33, 177, 38),
            ),
            Text('February 23, 9:56 PM',
                style: TextStyle(fontSize: 14.0, color: Colors.grey)),
          ],
        ),
        trailing: const Icon(
          Icons.call_rounded,
          size: 27,
          color: Colors.green,
        ),
      ),
      ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/image/Snapchat-1869072314.jpg'),
          radius: 30.0,
        ),
        title: const Text('adelle_klarke',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.call_made_rounded,
              size: 18,
              color: Color.fromARGB(255, 33, 177, 38),
            ),
            Text('February 23, 9:56 PM',
                style: TextStyle(fontSize: 14.0, color: Colors.grey)),
          ],
        ),
        trailing: const Icon(
          Icons.call_rounded,
          size: 27,
          color: Colors.green,
        ),
      ),
    ]);
  }
}

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 0, left: 0),

      /// In AnimSearchBar widget, the width, textController, onSuffixTap are required properties.
      /// You have also control over the suffixIcon, prefixIcon, helpText and animationDurationInMilli
      child: AnimSearchBar(
        width: MediaQuery.of(context).size.width,
        textController: textController,
        onSuffixTap: () {
          setState(() {
            textController.clear();
          });
        },
        onSubmitted: (ValueKey) {},
      ),
    );
  }
}
