import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

var courseNames = ['broccoli', 'cabbage'];

class CourseSuggestions extends StatefulWidget {
  @override
  _CourseSuggestionsState createState() => _CourseSuggestionsState();
}

class _CourseSuggestionsState extends State<CourseSuggestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("Course suggester"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return Divider();
          }
          final int index = i ~/ 2;
          return _buildRow(courseNames[index]);
        }
      ),
    );
  }
  Widget _buildRow(String courseName) {
    return ListTile(
      title: Text(courseName),
    );
  }
}