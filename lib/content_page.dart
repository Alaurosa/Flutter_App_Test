import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({ Key? key }) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  var _url = "https://flutter.dev";
  
  void _launchURL() async =>
  await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: _launchURL,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 25,
                height: 25 ,
              ),
              Text("Content Page"),
            ]
          ),
        ),
      ),
    );
  }
}