import 'package:flutter/material.dart';
import 'package:flutter_app_test/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
  String displayedNumber="";
  String correctNumber = "1234";
  //String incorrectMessage = "";
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  void addToText(String number){
    if (displayedNumber.length < 4){
      setState(() {
        displayedNumber = displayedNumber + number;
      });
    }
  }

  void checkNumber(){
   if(displayedNumber == correctNumber){
     print("Inputted number is correct");
      Navigator.push(
      context, MaterialPageRoute(builder: (context) => CorrectPassword()));
      setState(() {
        displayedNumber = "";
      });
   }
   else{
     print("Inputted number is not correct");
      setState(() {
        displayedNumber = "";
      });
   }
  }

  @override
  Widget build(BuildContext context) {
    var container2 = Container(
      padding: EdgeInsets.all(10),
      width:100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: Text (displayedNumber),
    );
    var container = container2;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Enter Password")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            container,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(onPressed: () => addToText("1"), child: Text("1")),
              TextButton(onPressed: () => addToText("2"), child: Text("2")),
              TextButton(onPressed: () => addToText("3"), child: Text("3"))
             ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(onPressed: () => addToText("4"), child: Text("4")),
              TextButton(onPressed: () => addToText("5"), child: Text("5")),
              TextButton(onPressed: () => addToText("6"), child: Text("6"))
             ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(onPressed: () => addToText("7"), child: Text("7")),
              TextButton(onPressed: () => addToText("8"), child: Text("8")),
              TextButton(onPressed: () => addToText("9"), child: Text("9"))
             ],
            ),
            ElevatedButton(onPressed: () => checkNumber(), child:Text("Submit")),
            // Text(
            //   'You have pushed the button this many times:',
            //   style: TextStyle(
            //     color: Colors.green, fontSize: 20.0,
            //   ),
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
