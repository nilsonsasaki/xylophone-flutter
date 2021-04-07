import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void xylophoneKey(int keyNumber) {
    final player = AudioCache();
    player.play('note$keyNumber.wav');
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
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: TextButton(
                      onPressed: () {
                        xylophoneKey(1);
                      },
                      child: Container(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    child: TextButton(
                      onPressed: () {
                        xylophoneKey(2);
                      },
                      child: Container(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: TextButton(
                      onPressed: () {
                        xylophoneKey(3);
                      },
                      child: Container(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: TextButton(
                      onPressed: () {
                        xylophoneKey(4);
                      },
                      child: Container(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () {
                        xylophoneKey(5);
                      },
                      child: Container(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.teal,
                    child: TextButton(
                      onPressed: () {
                        xylophoneKey(6);
                      },
                      child: Container(),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: TextButton(
                      onPressed: () {
                        xylophoneKey(7);
                      },
                      child: Container(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
