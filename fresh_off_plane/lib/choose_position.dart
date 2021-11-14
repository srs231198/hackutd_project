import 'package:flutter/material.dart';
import 'main.dart';
import 'choose_industry.dart';

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
                const Text(
                  'What Position in Computer Science?',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Positions()),
                    );
                  },
                  child: const Text("Individual Contributor"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Positions()),
                    );
                  },
                  child: const Text("Supervisor Position"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Positions()),
                    );
                  },
                  child: const Text("Manager Position"),
                ),
                ElevatedButton(
                  onPressed: () {
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