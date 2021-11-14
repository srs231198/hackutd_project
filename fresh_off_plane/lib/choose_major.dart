import 'package:flutter/material.dart';
import 'package:fresh_off_plane/globals.dart';
import 'main.dart';
import 'choose_industry.dart';
import 'choose_position.dart';
import 'dart:async';
import 'dart:convert';

class ChooseMajor extends StatefulWidget {
  @override
  _ChooseMajor createState() => _ChooseMajor();
}

class _ChooseMajor extends State<ChooseMajor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFe87500),
          title: const Text("Choose Major"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                  onPressed: () {
                    gpassedMajor = "Computer Science";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Positions()),
                    );
                  },
                  child: const Text("Computer Science"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                  onPressed: () {
                    gpassedMajor = "Software Engineering";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Positions()),
                    );
                  },
                  child: const Text("Software Engineering"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                  onPressed: () {
                    gpassedMajor = "Data Science";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Positions()),
                    );
                  },
                  child: const Text("Data Science"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: const Color(0xFFe87500)),
                  onPressed: () {
                    gpassedMajor = "Computer Engineering";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Positions()),
                    );
                  },
                  child: const Text("Computer Engineering"),
                ),
              ]
          ),
        ),
    );
  }
}