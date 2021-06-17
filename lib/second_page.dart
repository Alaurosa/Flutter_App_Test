import 'package:flutter/material.dart';
import 'package:flutter_app_test/third_page.dart';

class CorrectPassword extends StatefulWidget {
  const CorrectPassword({ Key? key }) : super(key: key);

  @override
  _CorrectPasswordState createState() => _CorrectPasswordState();
}

class _CorrectPasswordState extends State<CorrectPassword> {
  String inputText = " ";
  String correctText = "polarlights";

  // void resetPassword(){
  //   setState(() {
  //     inputText = "";
  //   });
  // }

  void checkPassword(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ListPage()));
    setState(() {
      inputText = "";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Enter Second Password"))),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Enter Password"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border:OutlineInputBorder()
                ),
                style: TextStyle(fontSize: 20.0),
                onChanged: (text){
                  inputText = text;
                },
              ),
            ),
            ElevatedButton(
              child: Text("Submit"),
              onPressed: () {
                if (inputText == correctText) {
                  print("CORRECT PASSWORD");
                  checkPassword();
                }
                else {
                  print("INCORRECT PASSWORD");
                }
              },
              
            ),
          ]
        )
      )          
    );
  }
}