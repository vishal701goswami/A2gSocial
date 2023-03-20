import 'dart:math';

import 'package:arghaapp/Like_page.dart';
import 'package:arghaapp/colors/theme_colors.dart';
import 'package:arghaapp/MessagesPage.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';

import 'package:pinch_zoom_release_unzoom/pinch_zoom_release_unzoom.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];
  final List _story = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.Appbar,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  LineIcons.search,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const MessagesPage())),
                    child: const Icon(Icons.chat_bubble_outline_outlined)),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //for
              Container(
                  height: 130,
                  child: ListView.builder(
                      itemCount: _story.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Mystory();
                      })),
              //post
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MySquare();
                  }),
            ],
          ),
        ));
  }
}

//story___________________________________________________________________________________________________

class Mystory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: MyColors.Story,
              ),
              child: Center(
                child: Container(
                  height: 82,
                  width: 82,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

//Square__________________________________________________________________________________________________

enum SampleItem { itemOne, itemTwo, itemThree }

class MySquare extends StatefulWidget {
  MySquare({super.key});

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  TextEditingController Writetext = TextEditingController();
  TextEditingController search_controller = TextEditingController();
  @override
  bool addTohigheLite = false;
  bool cmbscritta = false;
  bool pressGeoON = false;
  bool like = true;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
          height: 750,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey),
                            ),
                          ),
                          const Text(
                            "Argha_das",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
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
                                ? const Text("Following")
                                : const Text("Follow")),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 10),
                      child: Icon(Icons.more_vert),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onDoubleTap: () {
                  log(10);
                  setState(() {
                    like = !like;
                  });
                  setState(() {});
                },
                child: Container(
                  height: 480,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 110, 110, 110),
                  ),
                  child: PinchZoomReleaseUnzoomWidget(
                    child: Image.asset('assets/image/20221217_220510.jpg'),
                  ),
                ),
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8),
                      child: FavoriteButton(
                        isFavorite: false,
                        iconSize: 45,
                        // iconDisabledColor: Colors.white,
                        valueChanged: (_isFavorite) {
                          print('Is Favorite : $_isFavorite');
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        left: 8,
                      ),
                      child: Icon(
                        CupertinoIcons.chat_bubble_text,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        left: 8,
                      ),
                      child: InkWell(
                        onTap: () => sendbutton(),
                        child: const Icon(
                          CupertinoIcons.paperplane,
                          size: 30,
                        ),
                      ),
                    ),
                    const Spacer(),
                    //bookmark

                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pressGeoON = !pressGeoON;
                          });
                        },
                        child: Icon(
                          CupertinoIcons.bookmark_fill,
                          color: pressGeoON ? Colors.grey : Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //number of likes
                      Row(
                        children: [
                          DefaultTextStyle(
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => const Likespage())),
                              child: const Text(
                                '1M likes',
                              ),
                            ),
                          ),

                          const Spacer(),

                          //published date
                          const Text(
                            "Jan 25,2023",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 8,
                      ),

                      Column(
                        children: const <Widget>[
                          ExpandableText(
                            'Tere Khayal Se Khud Ko Chhupa Ke Dekha Hai Dil-o-Najar Ko Rula-Rula Ke Dekha Hai, Tu Nahi To Kuchh Bhi Nahi Hai Teri Kasam, Maine Kuchh Pal Tujhe Bhula Ke Dekha Hai.',
                            prefixText: 'Argha_das',
                            expandText: 'show more',
                            collapseText: 'show less',
                            maxLines: 1,
                            linkColor: Colors.blue,
                          ),
                        ],
                      ),

                      //number of comments

                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'View all comments..',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 15),
                          )),
                    ]),
              )
            ],
          )),
    );
  }

  ///
  ///Create share button section
  /// Profile and Write a message... and Friends list
  ///
  ///
  ///
  sendbutton() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
        ),
        context: context,
        builder: (context) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 8,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 209, 208, 208),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 80,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey,
                      ),
                    ),
                    title: TextField(
                      autofocus: true,
                      controller: Writetext,
                      decoration: const InputDecoration(
                        hintText: 'Write a message...',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 211, 211, 211),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: TextField(
                          autofocus: true,
                          controller: search_controller,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(fontSize: 16),
                            hintText: 'Search',
                            suffixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 8, left: 8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              return const Friends();
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}

///
///Create a Friends list
///
class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  bool cmbscritta = false;
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
