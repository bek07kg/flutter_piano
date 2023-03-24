import 'package:flutter/material.dart';
import 'package:flutter_piano/pages/home_page.dart';

class PianoApp extends StatelessWidget {
  const PianoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Piano",
      home: HomePage(),
    );
  }
}
