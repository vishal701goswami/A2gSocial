import 'package:arghaapp/call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mike_tyler',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 19.0)),
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child:
                const Icon(Icons.arrow_back, color: Colors.black, size: 30.0)),
        actions: <Widget>[
          Container(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () => Navigator.push(
                    context, CupertinoPageRoute(builder: (context) => Video())),
                child: const Icon(Icons.video_call_outlined,
                    color: Colors.black, size: 32.0),
              )),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.6)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.6)),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, size: 23.0)),
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Messages',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          ),
          const SizedBox(height: 23.0),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return const message();
              }),
        ],
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
    return const ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/image/Snapchat-1869072314.jpg'),
        radius: 30.0,
      ),
      title: Text('adelle_klarke',
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
      subtitle: Text('Yeah, that seems okay',
          style: TextStyle(fontSize: 14.0, color: Colors.grey)),
      trailing: Icon(Icons.photo_camera_outlined, color: Colors.black),
    );
  }
}
