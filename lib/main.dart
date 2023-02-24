import 'package:arghaapp/Home_page.dart';
import 'package:arghaapp/Login.dart';
import 'package:arghaapp/MessagesPage.dart';
import 'package:arghaapp/Notification.dart';
import 'package:arghaapp/call.dart';
import 'package:arghaapp/nevbar.dart';
import 'package:arghaapp/file_add.dart';
import 'package:arghaapp/proflie_subpages/Notification/Notification_setting_page.dart';
import 'package:arghaapp/proflie_subpages/setting/Setting.dart';
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
      home: Notification_tab(),
    );
  }
}
