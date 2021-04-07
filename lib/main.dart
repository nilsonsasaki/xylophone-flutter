import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void xylophoneKey(int keyNumber) {
    final player = AudioCache();
    player.play('note$keyNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) {
    return (Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            xylophoneKey(soundNumber);
          },
          child: Container(),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                buildKey(soundNumber: 1, color: Colors.red),
                buildKey(soundNumber: 2, color: Colors.orange),
                buildKey(soundNumber: 3, color: Colors.yellow),
                buildKey(soundNumber: 4, color: Colors.green),
                buildKey(soundNumber: 5, color: Colors.blue),
                buildKey(soundNumber: 6, color: Colors.teal),
                buildKey(soundNumber: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
