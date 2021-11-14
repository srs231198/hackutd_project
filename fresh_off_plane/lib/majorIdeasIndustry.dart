import 'package:flutter/material.dart';
import 'main.dart';
import 'majorIdeas.dart';

class MajorIdeasIndustry extends StatefulWidget {
  @override
  _MajorIdeasIndustryState createState() => _MajorIdeasIndustryState();
}

class _MajorIdeasIndustryState extends State<MajorIdeasIndustry> {
  String dropdownValue = 'Information Technology';

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("Help me choose a major"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Text("What industry do you want to go into?"),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              //style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                //    color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>["Information Technology", "Healthcare", "Education"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MajorIdeas(passedIndustry: dropdownValue, passedString: 'temp',)),
                );
              },
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}