import 'package:flutter/material.dart';

class screens extends StatefulWidget {
  const screens({super.key});

  @override
  State<screens> createState() => _screensState();
}

class _screensState extends State<screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text('Todo Item')),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Add'))
          ],
        ),
      ),
    );
  }
}
