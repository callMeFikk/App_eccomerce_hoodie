import 'package:eccomerce_hoodie/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hoodie',
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
