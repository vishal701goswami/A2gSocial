import 'package:arghaapp/MessagesPage.dart';
import 'package:arghaapp/nevbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SocialApp());
}

class SocialApp extends StatefulWidget {
  const SocialApp({super.key});

  @override
  State<SocialApp> createState() => _SocialAppState();
}

class _SocialAppState extends State<SocialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homenev(),
    );
  }
}
