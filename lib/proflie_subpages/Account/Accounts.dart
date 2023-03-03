import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:velocity_x/velocity_x.dart';

///
///Create Account page and create tabs
/// (1) Personal information
///  (2) Saved
///   (3) Close friends
///    (4) Original posts
///
class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.3,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            "Account",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            ListTile(
              leading: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const Personal_information()));
                },
                child: const Text(
                  "Personal information",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            ListTile(
              leading: InkWell(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => const Saved()));
                },
                child: const Text(
                  "Saved",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            ListTile(
              leading: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const Close_Friends()));
                },
                child: const Text(
                  "Close Friends",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            ListTile(
              leading: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const Original_posts()));
                },
                child: const Text(
                  "Original posts",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ));
  }
}

class Personal_information extends StatefulWidget {
  const Personal_information({super.key});

  @override
  State<Personal_information> createState() => _Personal_informationState();
}

class _Personal_informationState extends State<Personal_information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          "Account",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                  "Provide your personal information. even if the account\nin for somthing like a business or pet. it won't be part"),
            ),
          ),
          const Center(child: Text("of your public profile.")),
          const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text("To keep your account secure, don't enter an email or"),
          )),
          const Center(
              child: Text("phone number that beiongs to someone else.")),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 1,
              color: const Color.fromARGB(255, 221, 221, 221),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Email Address",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const Email_address()));
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 6, left: 20),
              child: Text(
                "aloksahu.69@gmail.com",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 1,
              color: const Color.fromARGB(255, 124, 124, 124),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Phone number",
              style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 6, left: 20),
            child: Text(
              "+918986522380",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 1,
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Gander",
              style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const Gander()));
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 6, left: 20),
              child: Text(
                "Male",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 1,
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Birthday",
              style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => WidgetPage()));
              },
              child: const Text(
                "Apr 24, 1997",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 1,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

///
///Create a email address page
///email textfield
/// TextField(
///             controller: Emailcontroller,
///             decoration: const InputDecoration(
///               hintText: 'Email',
///             ),
///         ),
///
///
class Email_address extends StatefulWidget {
  const Email_address({super.key});

  @override
  State<Email_address> createState() => _Email_addressState();
}

class _Email_addressState extends State<Email_address> {
  TextEditingController Emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title:
            const Text("Change email", style: TextStyle(color: Colors.black)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.check,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: Emailcontroller,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///
///Create Gander page
///
class Gander extends StatefulWidget {
  const Gander({super.key});

  @override
  State<Gander> createState() => _GanderState();
}

class _GanderState extends State<Gander> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Gender", style: TextStyle(color: Colors.black)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.check,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: const Gender(),
    );
  }
}

///
///Create radio Button
///RadioGroup<String>.builder(
///        groupValue: _verticalGroupValue,
///        onChanged: (value) => setState(() {
///          _verticalGroupValue = value ?? '';
///        }),
///        items: _status,
///        itemBuilder: (item) => RadioButtonBuilder(
///          item,
///        ),
///        fillColor: Colors.blue,
///      ),
///
class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String _verticalGroupValue = "Requests";

  final _status = ["Femail", "Male", "Custom", "Prefer not to say"];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      RadioGroup<String>.builder(
        groupValue: _verticalGroupValue,
        onChanged: (value) => setState(() {
          _verticalGroupValue = value ?? '';
        }),
        items: _status,
        itemBuilder: (item) => RadioButtonBuilder(
          item,
        ),
        fillColor: Colors.blue,
      ),
    ]);
  }
}

///
/// DatePickerWidget
///
///
class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Colors.grey[900]!,
              Colors.black,
            ],
            stops: const [0.7, 1.0],
          )),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: DatePickerWidget(
                    looping: false, // default is not looping
                    firstDate: DateTime.now(), //DateTime(1960),
                    //  lastDate: DateTime(2002, 1, 1),
//              initialDate: DateTime.now(),// DateTime(1994),
                    dateFormat:
                        // "MM-dd(E)",
                        "dd/MMMM/yyyy",
                    // locale: DatePicker.localeFromString('th'),
                    onChange: (DateTime newDate, _) {
                      setState(() {
                        _selectedDate = newDate;
                      });
                      print(_selectedDate);
                    },
                    pickerTheme: const DateTimePickerTheme(
                      backgroundColor: Colors.transparent,
                      itemTextStyle:
                          TextStyle(color: Colors.white, fontSize: 19),
                      dividerColor: Colors.white,
                    ),
                  ),
                ),
                Text("${_selectedDate ?? ''}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///
///Create a Saved page
///
///
///
class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
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

///Original posts page
///with switch
///
class Original_posts extends StatefulWidget {
  const Original_posts({super.key});

  @override
  State<Original_posts> createState() => _Original_postsState();
}

class _Original_postsState extends State<Original_posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title:
            const Text("Original posts", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ListTile(
            leading: Text("Save original posts"),
            trailing: Original_post(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Automatically save the unedited photos and videos",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ListTile(
              leading: Text("Save posted photos"),
              trailing: Original_post(),
            ),
          ),
          ListTile(
            leading: Text("Save posted videos"),
            trailing: Original_post(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Saving videos to your phone uses more storage space. ",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

///
///Original post switch
///Switch(
// This bool value toggles the switch.
///      value: light,
///     activeColor: Colors.blue,
///     onChanged: (bool value) {
/// This is called when the user toggles the switch.
///      setState(() {
///       light = value;
///       });
///     },
///   );
///
class Original_post extends StatefulWidget {
  const Original_post({super.key});

  @override
  State<Original_post> createState() => _Original_postState();
}

class _Original_postState extends State<Original_post> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.blue,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}

///
///Close friends page
///

class Close_Friends extends StatefulWidget {
  const Close_Friends({super.key});

  @override
  State<Close_Friends> createState() => _Close_FriendsState();
}

class _Close_FriendsState extends State<Close_Friends> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Close friends",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(children: [
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 12, left: 8, right: 8, bottom: 8),
            child: Container(
              height: 40,
              color: Colors.white,
              child: const CupertinoSearchTextField(),
            ),
          ),
        ),
        const ListTile(
          leading: Text(
            "5 People",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            "Clear all",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Close_friends();
              }),
        )
      ]),
    );
  }
}

class Close_friends extends StatefulWidget {
  const Close_friends({super.key});

  @override
  State<Close_friends> createState() => _Close_friendsState();
}

class _Close_friendsState extends State<Close_friends> {
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
              trailing: MyStatefulWidget(),
            ))
      ],
    );
  }
}

///
///Check button
///
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue;
    }

    return Transform.scale(
        scale: 1.3,
        child: Checkbox(
          shape: const CircleBorder(),
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ));
  }
}
