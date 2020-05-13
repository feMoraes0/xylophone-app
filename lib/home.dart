import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AudioCache player = AudioCache();
  final List<Map> sounds = [
    {
      'file': 'note1.wav',
      'color': Colors.redAccent,
    },
    {
      'file': 'note2.wav',
      'color': Colors.orangeAccent,
    },
    {
      'file': 'note3.wav',
      'color': Colors.yellowAccent,
    },
    {
      'file': 'note4.wav',
      'color': Colors.lightGreen,
    },
    {
      'file': 'note5.wav',
      'color': Colors.green,
    },
    {
      'file': 'note6.wav',
      'color': Colors.blueAccent,
    },
    {
      'file': 'note7.wav',
      'color': Colors.deepPurpleAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: this.sounds.length,
          itemBuilder: (context, index) {
            return Container(
              height: height / this.sounds.length,
              child: FlatButton(
                color: this.sounds[index]['color'],
                onPressed: () {
                  this.player.play(this.sounds[index]['file']);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
