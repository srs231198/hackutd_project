import 'package:flutter/material.dart';
import 'main.dart';
import 'choose_industry.dart';
import 'globals.dart';

class Positions extends StatelessWidget {
  const Positions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                  onPressed: () {
                    gpassedPosition = "Individual Contributor";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Positions()),
                    );
                  },
                  child: const Text("Individual Contributor"),
                ),
                ElevatedButton(
                  onPressed: () {
                    gpassedPosition = "Supervisor Position";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Positions()),
                    );
                  },
                  child: const Text("Supervisor Position"),
                ),
                ElevatedButton(
                  onPressed: () {
                    gpassedPosition = "Manager Position";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Positions()),
                    );
                  },
                  child: const Text("Manager Position"),
                ),
                ElevatedButton(
                  onPressed: () {
                    gpassedPosition = "Executive Position";
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Positions()),
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