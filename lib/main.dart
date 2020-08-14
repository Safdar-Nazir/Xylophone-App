
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:audioplayers/audio_cache.dart";

void main() => runApp(
    XylophoneApp()
);

class XylophoneApp extends StatelessWidget {

  void playSound(int soundValue ){
    final audioPlayer = new AudioCache();
    audioPlayer.play('assets/note$soundValue.wav');

  }

  Expanded buildMethod(int soundValue, Color color){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundValue);
        },

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildMethod(1, Colors.pink),
              buildMethod(2, Colors.orange),
              buildMethod(3, Colors.indigo),
              buildMethod(2, Colors.green),
              buildMethod(2, Colors.blue),
              buildMethod(2, Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
