import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting_page extends StatefulWidget {
  const setting_page({super.key});

  @override
  State<setting_page> createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: CupertinoSearchTextField(
              controller: controller,
              autocorrect: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 12, left: 24),
                child: Icon(
                  Icons.person_add_alt_1_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 12),
                child: Text(
                  "Follow and invite friends",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 12, left: 20),
                child: Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 12, left: 20),
                child: Icon(
                  Icons.lock_outline,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "Privacy",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 12, left: 20),
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "Account",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 12, left: 20),
                child: Icon(
                  Icons.help_outline_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "Help",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 12, left: 20),
                child: Icon(
                  CupertinoIcons.info_circle,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "About",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text("Logins",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 30),
            child: Text("Add account",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 30),
            child: Text("Log out",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
