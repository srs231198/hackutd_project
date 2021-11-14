import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'globals.dart';

class CourseSections extends StatefulWidget {
  @override
  _CourseSectionsState createState() => _CourseSectionsState();
}
class _CourseSectionsState extends State<CourseSections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
          backgroundColor: const Color(0xFFe87500),
          title: const Text("Course Suggestions"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  'Selection of Class: ${gpassedCourse}\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchCoursebookBrowser();
                  },
                  child: const Text("CS 3305.001"),
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchCoursebookBrowser();
                  },
                  child: const Text("CS 3305.002"),
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchCoursebookBrowser();
                  },
                  child: const Text("CS 3305.003"),
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchCoursebookBrowser();
                  },
                  child: const Text("CS 3305.004"),
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchCoursebookBrowser();
                  },
                  child: const Text("CS 3305.005"),
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchCoursebookBrowser();
                  },
                  child: const Text("CS 3305.0w1"),
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchCoursebookBrowser();
                  },
                  child: const Text("CS 3305.502"),
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchCoursebookBrowser();
                  },
                  child: const Text("CS 3305.hon"),
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                ),
              ]
          ),
        )
    );
  }
}

_launchCoursebookBrowser() async {
  const url = 'https://catalog.utdallas.edu/2018/undergraduate/courses/cs3305';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}