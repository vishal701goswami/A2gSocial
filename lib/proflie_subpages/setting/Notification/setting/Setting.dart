import 'package:arghaapp/proflie_subpages/Account/Accounts.dart';
import 'package:arghaapp/proflie_subpages/setting/Notification/Notification_setting_page.dart';
import 'package:arghaapp/proflie_subpages/setting/Privacy/Privacy.dart';
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
        iconTheme: const IconThemeData(color: Colors.black),
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
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12, left: 20),
                child: Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const Notification_tab()));
                  },
                  child: const Text(
                    "Notifications",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12, left: 20),
                child: Icon(
                  Icons.lock_outline,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const Privacy_page()));
                  },
                  child: const Text(
                    "Privacy",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12, left: 20),
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const Account()));
                  },
                  child: const Text(
                    "Account",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
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
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 30),
            child: InkWell(
              onTap: () => Add(),
              child: const Text("Add account",
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
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

  Add() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 8,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        "Add account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 8, 8, 8),
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      height: 1,
                      color: const Color.fromARGB(255, 207, 207, 207),
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 8, right: 8),
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        child: const Center(
                            child: Text(
                          "Log into existing account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 14),
                        )),
                      )),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Create new account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ]),
          ),
        );
      },
    );
  }
}
