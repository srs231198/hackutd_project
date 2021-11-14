import 'package:flutter/material.dart';
import 'main.dart';
import 'choose_major.dart';

class ChooseIndustry extends StatefulWidget {
  @override
<<<<<<< HEAD:fresh_off_plane/lib/choose_industry.dart
  _ChooseIndustryState createState() => _ChooseIndustryState();
}

class _ChooseIndustryState extends State<ChooseIndustry> {
=======
  _ChooseIndustry createState() => _ChooseIndustry();
}

class _ChooseIndustry extends State<ChooseIndustry> {
>>>>>>> cf6ab5f0f8e32ad8b26fcdf9fee0cdda40d89c2e:fresh_off_plane/lib/majorIdeasIndustry.dart
  String industry = 'Information Technology';

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
<<<<<<< HEAD:fresh_off_plane/lib/choose_industry.dart
        title: const Text("Course suggester"),
=======
        title: const Text("Choose Industry"),
>>>>>>> cf6ab5f0f8e32ad8b26fcdf9fee0cdda40d89c2e:fresh_off_plane/lib/majorIdeasIndustry.dart
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