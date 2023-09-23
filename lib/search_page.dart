import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Search_Page extends StatefulWidget {
  const Search_Page({super.key});

  @override
  State<Search_Page> createState() => _Search_PageState();
}

class _Search_PageState extends State<Search_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const CupertinoSearchTextField(),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return const usersid();
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class usersid extends StatefulWidget {
  const usersid({super.key});

  @override
  State<usersid> createState() => _usersidState();
}

class _usersidState extends State<usersid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              leading: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/image/Snapchat-1869072314.jpg'),
                radius: 30.0,
              ),
              title: const Text('mr_das_here',
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Argha Das',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                ],
              ),
              // trailing: const MyStatefulWidget(),
            ))
      ],
    );
  }
}
