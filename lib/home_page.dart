import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.add_box),
                title: Text("TITLE"),
                trailing: Icon(Icons.check_box),
                subtitle: Text("SUBTITLE"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.add_box),
                title: Text("TITLE"),
                trailing: Icon(Icons.check_box),
                subtitle: Text("SUBTITLE"),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(icon: Icon(Icons.facebook), onPressed: (){print("Hello World");}),
                title: Text("TITLE"),
                trailing: Icon(Icons.check_box),
                subtitle: Text("SUBTITLE"),
              ),
            ),
          ],
        )
      ),
    );
  }
}