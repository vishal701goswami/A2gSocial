import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Likespage extends StatefulWidget {
  const Likespage({super.key});

  @override
  State<Likespage> createState() => _LikespageState();
}

class _LikespageState extends State<Likespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Likes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 40,
              color: Colors.white,
              child: const CupertinoSearchTextField(),
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) {
                return const Following();
              }),
        ],
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
