// ignore_for_file: use_build_context_synchronously

import 'package:arghaapp/proflie_subpages/setting/Notification/setting/Setting.dart';
import 'package:arghaapp/proflie_subpages/setting/Saved.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => logic(),
                child: const Icon(
                  Icons.menu_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
          elevation: 0.3,
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(500)),
                      child: Center(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(500),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/image/IMG_20230127_103055_050.jpg'))),
                        ),
                      ),
                    ).pOnly(left: 25, top: 10, bottom: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "mr_das_here",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        5.heightBox,
                        const Text(
                          "Aagha das",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ).pOnly(left: 30),
                  ],
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "574",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "574",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "574",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
                10.heightBox,
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.shade300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: Text(
                        "it should go to new web page which shows clear details of the selected flower and how to order it The expected date to deliver it also when we order it ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ).pOnly(top: 20, left: 20, bottom: 20, right: 20),
                ListTile(
                  leading: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const Edit_Profile()));
                    },
                    child: Container(
                      height: 35,
                      width: 190,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 216, 216, 216),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        "Edit profile",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                  trailing: Container(
                    height: 35,
                    width: 190,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 216, 216, 216),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      "Share profile",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
                const MyTabsView(),
              ],
            ),
          ),
        ));
  }

  logic() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 250,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 18, left: 20),
                        child: Icon(Icons.settings_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22, left: 16),
                        child: InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const setting_page()));
                            },
                            child: const Text("Settings")),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 18, left: 20),
                        child: Icon(Icons.group_outlined),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 22, left: 16),
                        child: Text("Close friends"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 18, left: 20),
                        child: Icon(Icons.star_border_outlined),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 22, left: 16),
                        child: Text("Favorites"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 18, left: 20),
                        child: Icon(Icons.qr_code_scanner_outlined),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 22, left: 16),
                        child: Text("QR code"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 18, left: 20),
                        child: Icon(Icons.bookmark_outline),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22, left: 16),
                        child: InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => const Saved()));
                            },
                            child: const Text("Saved")),
                      ),
                    ],
                  ),
                ]),
          ),
        );
      },
    );
  }
}

class MyTabsView extends StatefulWidget {
  const MyTabsView({super.key});
  @override
  State<MyTabsView> createState() => _MyTabsViewState();
}

class _MyTabsViewState extends State<MyTabsView> {
  bool tab = false;
  int index = 0;
  List<Widget> pages = const [
    PostsTabsProfile(),
    PostsTabsProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                    horizontal: BorderSide(
                  color: Colors.grey.shade400,
                ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        icon: const Icon(
                          Icons.widgets_outlined,
                          color: Colors.black,
                        ))),
                Expanded(
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        icon: const Icon(
                          Icons.tag,
                          color: Colors.black,
                        ))),
              ],
            ),
          ),
          pages[index],
        ],
      ),
    );
  }
}

class PostsTabsProfile extends StatefulWidget {
  const PostsTabsProfile({super.key});
  @override
  State<PostsTabsProfile> createState() => _PostsTabsProfileState();
}

class _PostsTabsProfileState extends State<PostsTabsProfile> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 50,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
          ).p(2);
        });
  }
}

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Activity Status",
            style: TextStyle(color: Colors.black)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.check, size: 30, color: Colors.blue),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey),
              ),
            ),
          ),
          const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              "Edit profile",
              style: TextStyle(fontSize: 13, color: Colors.blue),
            ),
          ))
        ],
      ),
    );
  }
}
