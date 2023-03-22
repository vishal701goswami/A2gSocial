import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({super.key});

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title:
              const Text("mr_das_here", style: TextStyle(color: Colors.black)),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("0 followers",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ),
              Tab(
                child: Text("0 following",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return const followers();
                }),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return const Following();
                }),
          ],
        ),
      ),
    );
  }
}

class followers extends StatefulWidget {
  const followers({super.key});

  @override
  State<followers> createState() => _followersState();
}

class _followersState extends State<followers> {
  @override
  bool cmbscritta = false;
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.grey),
      ),
      title: const Text(
        "mr_das_here",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: const Text(
        "biku po",
        style: TextStyle(color: Color.fromARGB(255, 112, 112, 112)),
      ),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            cmbscritta = !cmbscritta;
          });
        },
        child: Container(
          height: 30,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 226, 226, 226)),
          child: Center(
              child: cmbscritta
                  ? const Text(
                      "Following",
                      style: TextStyle(color: Colors.blue),
                    )
                  : const Text("Follow")),
        ),
      ),
    );
  }
}

class Following extends StatefulWidget {
  const Following({super.key});

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  bool cmbscritta = false;
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.grey),
      ),
      title: const Text(
        "Aniket Samant",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: const Text(
        "biku po",
        style: TextStyle(color: Color.fromARGB(255, 112, 112, 112)),
      ),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            cmbscritta = !cmbscritta;
          });
        },
        child: Container(
          height: 30,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 226, 226, 226)),
          child: Center(
              child: cmbscritta
                  ? const Text(
                      "Following",
                      style: TextStyle(color: Colors.blue),
                    )
                  : const Text("Follow")),
        ),
      ),
    );
  }
}
