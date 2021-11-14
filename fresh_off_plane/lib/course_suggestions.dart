import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseSuggestions extends StatefulWidget {
  @override
  _CourseSuggestionsState createState() => _CourseSuggestionsState();
}
class _CourseSuggestionsState extends State<CourseSuggestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
          title: const Text("Course Suggestions"),
        ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [

        ]
    ),
    )
    );
  }
}