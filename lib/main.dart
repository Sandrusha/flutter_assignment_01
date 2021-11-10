import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatefulWidget {
  @override
  State<FlutterApp> createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {
  var texts = [
    'She used her own hair in the soup to give it more flavor.',
    'Red is greener than purple, for sure.',
    'Some bathing suits just shouldn’t be worn by some people.',
    'The fifty mannequin heads floating in the pool kind of freaked them out.',
    'My secretary is the only person who truly understands my stamp-collecting obsession.'
  ];

  var max = 0;
  var randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: Column(
          children: [
            textDisplay(),
            textControl(),
          ],
        ),
      ),
    );
  }

  Widget textControl() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            max = texts.length - 1;
            randomNumber = Random().nextInt(max) + 1;
          });
        },
        child: const Text('Click here to change the text'),
      ),
    );
  }

  Widget textDisplay() {
    return Container(
        child: Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: max == 0
            ? const Text('This is the first thing you see here.')
            : Text(texts[randomNumber]),
      ),
    ));
  }
}
