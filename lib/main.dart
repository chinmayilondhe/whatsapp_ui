import 'package:flutter/material.dart';
import 'package:flutter_apps/Pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        accentColor: new Color(0xff25D366),
      ),
      home: const Splash(),
    );
  }
}
