import 'package:flutter/material.dart';
import 'main.dart';
import 'choose_industry.dart';
import 'globals.dart';
import 'course_suggestions.dart';

class Positions extends StatelessWidget {
  const Positions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFe87500),
          title: const Text("Choose Position"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  'What Position in ${gpassedMajor}?',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                  onPressed: () {
                    gpassedPosition = "Individual Contributor";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CourseSuggestions()),
                    );
                  },
                  child: const Text("Individual Contributor"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                  onPressed: () {
                    gpassedPosition = "Supervisor Position";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CourseSuggestions()),
                    );
                  },
                  child: const Text("Supervisor Position"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                  onPressed: () {
                    gpassedPosition = "Manager Position";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CourseSuggestions()),
                    );
                  },
                  child: const Text("Manager Position"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                  onPressed: () {
                    gpassedPosition = "Executive Position";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CourseSuggestions()),
                    );
                  },
                  child: const Text("Executive Position"),
                ),
              ]
          ),
        )
    );
  }
}