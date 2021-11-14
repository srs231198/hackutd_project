import 'package:flutter/material.dart';
import 'main.dart';
import 'choose_industry.dart';
import 'choose_position.dart';
import 'package:http/http.dart' as http;

class MajorIdeas extends StatefulWidget {
  final String? passedString;
  final String? passedIndustry;
  const MajorIdeas({Key? key, this.passedString, this.passedIndustry}) : super(key: key);

  @override
  _MajorIdeas createState() => _MajorIdeas();
}

class _MajorIdeas extends State<MajorIdeas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Course helper"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Positions()),
                    );
                  },
                  child: Text('${widget.passedIndustry}'),
                ),
              ]
          ),
        )
    );
  }
}