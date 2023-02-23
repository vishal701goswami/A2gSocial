import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Calls"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(14),
              child: Text(
                "Call friends",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return const call_friends();
                }),
          ],
        ),
      ),
    );
  }
}

class call_friends extends StatefulWidget {
  const call_friends({super.key});

  @override
  State<call_friends> createState() => _call_friendsState();
}

class _call_friendsState extends State<call_friends> {
  @override
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
      trailing: SizedBox(
        height: 50,
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(
              child: Icon(
                CupertinoIcons.phone,
                size: 30,
                color: Colors.black87,
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  CupertinoIcons.video_camera,
                  size: 35,
                  color: Colors.black87,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
