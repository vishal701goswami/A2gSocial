import 'package:arghaapp/Home_page.dart';
import 'package:arghaapp/Notification.dart';
import 'package:arghaapp/colors/theme_colors.dart';
import 'package:arghaapp/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class homenev extends StatefulWidget {
  @override
  _homenevState createState() => _homenevState();
}

class _homenevState extends State<homenev> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    const notification(),
    const Text(
      'Reel',
      style: optionStyle,
    ),
    const Text(
      'Search',
      style: optionStyle,
    ),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[200]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  iconColor: Color.fromARGB(255, 43, 163, 179),
                  iconActiveColor: Color.fromARGB(255, 43, 163, 179),
                  text: 'Home',
                  textColor: Color.fromARGB(255, 43, 163, 179),
                ),
                GButton(
                  icon: LineIcons.heart,
                  iconColor: Color.fromARGB(255, 196, 33, 33),
                  iconActiveColor: Color.fromARGB(255, 196, 33, 33),
                  text: 'Likes',
                  textColor: Color.fromARGB(255, 196, 33, 33),
                ),
                GButton(
                  icon: LineIcons.plus,
                  iconColor: Color.fromARGB(255, 196, 33, 33),
                  iconActiveColor: Color.fromARGB(255, 196, 33, 33),
                ),
                GButton(
                  icon: LineIcons.video,
                  iconColor: Color.fromARGB(255, 196, 33, 33),
                  iconActiveColor: Color.fromARGB(255, 196, 33, 33),
                  text: 'Reel',
                  textColor: Color.fromARGB(255, 196, 33, 33),
                ),
                GButton(
                  icon: LineIcons.user,
                  iconColor: Color.fromARGB(255, 121, 24, 167),
                  iconActiveColor: Color.fromARGB(255, 121, 24, 167),
                  text: 'Profile',
                  textColor: Color.fromARGB(255, 121, 24, 167),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
