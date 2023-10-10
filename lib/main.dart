import 'package:flutter/material.dart';
import 'package:lab_work/screen/screen.dart';
import 'package:lab_work/screen/screen2.dart';

void main() {
  runApp(Lab_Work());
}

class Lab_Work extends StatelessWidget {
  const Lab_Work({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screens2(),
    );
  }
}
