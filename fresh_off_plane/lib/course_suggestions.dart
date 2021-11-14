import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'globals.dart';
import 'course_sections.dart';

class CourseSuggestions extends StatefulWidget {
  @override
  _CourseSuggestionsState createState() => _CourseSuggestionsState();
}
class _CourseSuggestionsState extends State<CourseSuggestions> {
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
            'As a ${gpassedMajor} major looking to work as a(n) ${gpassedPosition} in ${gpassedIndustry}, here are some suggested courses:\n',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
            onPressed: () {
              gpassedCourse = "CS 1336";
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseSections()),
              );
            },
            child: const Text("CS 1336: Programming Fundamentals"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
            onPressed: () {
              gpassedCourse = "CS 1337";
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseSections()),
              );
            },
            child: const Text("CS 1337: Computer Science 1"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
            onPressed: () {
              gpassedCourse = "CS 2305";
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseSections()),
              );
            },
            child: const Text("CS 2305: Discrete Math 1"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
            onPressed: () {
              gpassedCourse = "CS 2336";
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseSections()),
              );
            },
            child: const Text("CS 2336: Computer Science 2"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
            onPressed: () {
              gpassedCourse = "CS 3305";
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseSections()),
              );
            },
            child: const Text("CS 3305: Discrete Math 2"),
          ),
        ]
    ),
    )
    );
  }
}