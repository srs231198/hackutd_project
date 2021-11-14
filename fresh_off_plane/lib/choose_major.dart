import 'package:flutter/material.dart';
import 'main.dart';
import 'choose_industry.dart';
import 'choose_position.dart';
import 'package:http/http.dart' as http;

class ChooseMajor extends StatefulWidget {
  final String? passedString;
  final String? passedIndustry;
  const ChooseMajor({Key? key, this.passedString, this.passedIndustry}) : super(key: key);

  @override
  _ChooseMajor createState() => _ChooseMajor();
}

class _ChooseMajor extends State<ChooseMajor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Choose Major"),
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