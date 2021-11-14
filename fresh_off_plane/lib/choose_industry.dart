import 'package:flutter/material.dart';
import 'main.dart';
import 'choose_major.dart';

class ChooseIndustry extends StatefulWidget {
  @override
  _ChooseIndustry createState() => _ChooseIndustry();
}

class _ChooseIndustry extends State<ChooseIndustry> {
  String industry = 'Information Technology';

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("Choose Industry"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Text("What industry do you want to go into?"),
            DropdownButton<String>(
              value: industry,
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
                  industry = newValue!;
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
                  MaterialPageRoute(builder: (context) => ChooseMajor(passedIndustry: industry,)),
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