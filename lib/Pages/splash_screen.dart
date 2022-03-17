import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_apps/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    loadData();
  }
 
   loadData()  {
     var duration = const Duration(seconds: 3);
    return Timer(duration, (){
         Navigator.of(context).pushReplacement(
           MaterialPageRoute(builder: (context) => Home()));
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.8,
                child: new Center(
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    child: Card(
                        elevation: 10, child: Image.asset("images/icon.png")),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                // color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "from",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "META",
                      style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                    letterSpacing: 1,
                      ),
                    )
                    
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
