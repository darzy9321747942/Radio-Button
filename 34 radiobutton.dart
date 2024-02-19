import 'package:flutter/material.dart';

class radio extends StatefulWidget {
  radio({super.key});

  @override
  State<radio> createState() => _radioState();
}

enum Gender {
  //for radiobox
  male,
  female
}

class _radioState extends State<radio> {
  Gender _gender = Gender.male; //by default it will be selected as male
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("RadioButton"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: FlutterLogo(
                style: FlutterLogoStyle.stacked,
              ),
            ),
          )
        ],
      ),
      body: Container(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RadioListTile(title: Text("male"),
                      value: Gender.male,
                      groupValue: _gender,
                       //this will check  the property with
                      // value if the value is male then it passes true 
                      onChanged: (gender) {
                        setState(() {
                            _gender = gender!; //change the current state of checkbox
                        });
                      }),
                  RadioListTile(title: Text("female"),
                      value: Gender.female,
                      groupValue: _gender,
                      onChanged: (gender) {
                        setState(() {
                          _gender = gender!; 
                        });
                     })
                ],
              ))),
    );
    
  }
}