import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

void play(int i) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$i.wav'));
}

Expanded buildKey({Color color = Colors.black, int soundNumber = 1}) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0),
      ),
      onPressed: (() => play(soundNumber)),
      child: Container(
        color: color,
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Xylophone',
            ),
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.blue, soundNumber: 2),
            buildKey(color: Colors.black, soundNumber: 3),
            buildKey(color: Colors.purpleAccent, soundNumber: 4),
            buildKey(color: Colors.blueGrey, soundNumber: 5),
            buildKey(color: Colors.green, soundNumber: 6),
            buildKey(color: Colors.indigoAccent, soundNumber: 7),
          ])),
    );
  }
}
