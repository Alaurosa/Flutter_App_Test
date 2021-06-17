import 'package:flutter/material.dart';
import 'package:flutter_app_test/content_page.dart';
import 'package:flutter_app_test/home_page.dart';
import 'package:flutter_app_test/settings_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({ Key? key }) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  var i = 0;
  var items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
    BottomNavigationBarItem(icon: Icon(Icons.toc), label: "Content"),
    ];

  var pages = [
    HomePage(),
    SettingsPage(),
    ContentPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        items: items,
        onTap: (index){
          setState(() {
            i = index;
          });
          
        }
      ),
      appBar: AppBar(
        title: Text("Password II")),
      body: pages[i]
    );
  }
}