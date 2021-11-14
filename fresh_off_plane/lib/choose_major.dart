import 'package:flutter/material.dart';
import 'package:fresh_off_plane/globals.dart';
import 'main.dart';
import 'choose_industry.dart';
import 'choose_position.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<Majors> getMajors(String Industry) async {
  final response = await http.get(
    Uri.parse('http://10.0.2.2:5000/majors')
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Majors.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to get majors.');
  }
}

class Majors {
  final String major1;
  final String major2;
  final String major3;

  Majors({required this.major1, required this.major2, required this.major3});

  factory Majors.fromJson(Map<String, dynamic> json) {
    return Majors(
      major1: json['major1'],
      major2: json['major2'],
      major3: json['major3'],
    );
  }
}

class ChooseMajor extends StatefulWidget {
  @override
  _ChooseMajor createState() => _ChooseMajor();
}

class _ChooseMajor extends State<ChooseMajor> {
  final _futureMajors = getMajors(gpassedIndustry);
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Choose Major"),
        ),
        body: FutureBuilder(
          future: getMajors(gpassedIndustry),
          builder: (BuildContext context, AsyncSnapshot<Majors> snapshot) {
            if (snapshot.hasData) {
              Majors? major = snapshot.data;
              return Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(
                  onPressed: () {
                    gpassedMajor = major!.major1;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Positions()),
                    );
                  },
                  child: Text(major!.major1),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Positions()),
                    );
                  },
                  child: Text(major!.major2),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Positions()),
                    );
                  },
                  child: Text(major!.major3),
                ),
              ]
          ),
        );
            }
            else {
              return Center(child: CircularProgressIndicator());
            }
          }
          
          )
        
        
    );
  }
}