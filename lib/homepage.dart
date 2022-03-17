import 'package:flutter/material.dart';
import 'package:flutter_apps/Pages/calls.dart';
import 'package:flutter_apps/Pages/camera.dart';
import 'package:flutter_apps/Pages/chats.dart';
import 'package:flutter_apps/Pages/status.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  
  TabController? _tabs;
  
  @override
  void initState() {
    super.initState();
    _tabs=new TabController(length: 4, vsync: this,initialIndex: 1);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabs,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt),),
              new Tab(text: "CHATS"),
              new Tab(text: "STATUS"),
              new Tab(text: "CALLS"),
            ]
        ),
        actions: [
          new Icon(Icons.search),
          new Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
          new Icon(Icons.more_vert)
        ],
      ),
      body:  TabBarView(
        controller: _tabs,
          children: <Widget>[
            new Camera(),
            new Chats(),
            new Status(),
            new Calls()
          ]),
     
      
    );
  }
}
