import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Saved_File extends StatefulWidget {
  const Saved_File({super.key});

  @override
  State<Saved_File> createState() => _Saved_FileState();
}

class _Saved_FileState extends State<Saved_File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Saved",
            style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
      body: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  image: const DecorationImage(
                      image:
                          AssetImage('assets/image/Snapchat-1869072314.jpg'))),
            ).p(2);
          }),
    );
  }
}
