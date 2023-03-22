import 'package:flutter/material.dart';

class Followingpage extends StatefulWidget {
  const Followingpage({super.key});

  @override
  State<Followingpage> createState() => _FollowingpageState();
}

class _FollowingpageState extends State<Followingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Follow and invite friends",
            style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(
              Icons.person_add_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Follow contacts",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.mail_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Invite friends by email",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.message_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Invite friends by SMS",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Invite friends by...",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
