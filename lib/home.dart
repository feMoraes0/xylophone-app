import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AudioCache player = AudioCache();

  Expanded createList({
    Color color,
    int soundNumber,
  }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          this.player.play('note$soundNumber.wat');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            this.createList(color: Colors.red, soundNumber: 1),
            this.createList(color: Colors.orange, soundNumber: 2),
            this.createList(color: Colors.yellow, soundNumber: 3),
            this.createList(color: Colors.lightGreen, soundNumber: 4),
            this.createList(color: Colors.green, soundNumber: 5),
            this.createList(color: Colors.blue, soundNumber: 6),
            this.createList(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
