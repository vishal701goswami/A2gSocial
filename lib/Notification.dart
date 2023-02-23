import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Notifications",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 25),
              child: Text(
                "Today",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromARGB(255, 56, 56, 56)),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(5),
                  child: day_one(),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 25),
              child: Text(
                "Yesterday",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromARGB(255, 56, 56, 56)),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(5),
                  child: yesterday(),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 25),
              child: Text(
                "This week",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromARGB(255, 56, 56, 56)),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(5),
                  child: thisweek(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class day_one extends StatefulWidget {
  const day_one({super.key});

  @override
  State<day_one> createState() => _day_oneState();
}

class _day_oneState extends State<day_one> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.grey),
      ),
      title: const Text(
          "Itz_akash_here_04. mayankjangam_ and others liked your story."),
      subtitle: const Text(
        "",
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Container(
        height: 80,
        width: 40,
        color: Colors.grey,
      ),
    );
  }
}

class yesterday extends StatefulWidget {
  const yesterday({super.key});

  @override
  State<yesterday> createState() => _yesterdayState();
}

class _yesterdayState extends State<yesterday> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.grey),
      ),
      title: const Text(
          "Itz_akash_here_04. mayankjangam_ and others liked your story."),
      subtitle: const Text(
        "2d",
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Container(
        height: 80,
        width: 40,
        color: Colors.grey,
      ),
    );
  }
}

class thisweek extends StatefulWidget {
  const thisweek({super.key});

  @override
  State<thisweek> createState() => _thisweekState();
}

class _thisweekState extends State<thisweek> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.grey),
      ),
      title: const Text(
          "Itz_akash_here_04. mayankjangam_ and others liked your story."),
      subtitle: const Text(
        "2d",
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Container(
        height: 80,
        width: 40,
        color: Colors.grey,
      ),
    );
  }
}
