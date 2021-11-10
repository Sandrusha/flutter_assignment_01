import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var textToBeChanged = [
    'This is the body of my app',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.',
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
  ];
  int max = 0;
  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Assignment'),
        ),
        body: Column(
          children: [
            Center(
              child: Text(textToBeChanged[randomNumber]),
            ),
            ElevatedButton(
              onPressed: () {
                max = textToBeChanged.length - 1;
                setState(() {
                  randomNumber = Random().nextInt(max) + 1;
                });
              },
              child: const Text('Change the app text'),
            )
          ],
        ),
      ),
    );
  }
}
