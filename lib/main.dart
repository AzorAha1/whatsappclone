import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/statuspage.dart';
import 'screens/mainpage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.dark(),
      home: Mainpage(),
      
    );
  }
}
