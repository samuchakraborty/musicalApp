import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicalAppPage(),
    ),
  );
}

class MusicalAppPage extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({int soundNumber, String noteName, Color color}) {
    Widget child = Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(noteName),
      ),
    );
    return child;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Musical App",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(noteName: "Note 1", soundNumber: 1, color: Colors.green),
            buildKey(noteName: "Note 2", soundNumber: 2, color: Colors.red),
            buildKey(noteName: "Note 3", soundNumber: 3, color: Colors.yellow),
            buildKey(noteName: "Note 4", soundNumber: 4, color: Colors.blue),
            buildKey(noteName: "Note 5", soundNumber: 5, color: Colors.teal),
            buildKey(noteName: "Note 6", soundNumber: 6, color: Colors.grey),
            buildKey(noteName: "Note 7", soundNumber: 7, color: Colors.purple),
            // Expanded(
            //   child: FlatButton(
            //     color: Colors.green,
            //     onPressed: () {
            //       playSound(1);
            //     },
            //     child: Text("Note 1"),
            //   ),
            // ),
            // Expanded(
            //   child: FlatButton(
            //     color: Colors.blue,
            //     onPressed: () {
            //       playSound(2);
            //     },
            //     child: Text("Note 2"),
            //   ),
            // ),
            // Expanded(
            //   child: FlatButton(
            //     color: Colors.yellowAccent,
            //     onPressed: () {
            //       playSound(3);
            //     },
            //     child: Text("Note 3"),
            //   ),
            // ),
            // Expanded(
            //   child: FlatButton(
            //     color: Colors.brown,
            //     onPressed: () {
            //       playSound(4);
            //     },
            //     child: Text("Note 4"),
            //   ),
            // ),
            // Expanded(
            //   child: FlatButton(
            //     color: Colors.deepOrange,
            //     onPressed: () {
            //       playSound(5);
            //     },
            //     child: Text("Note 5"),
            //   ),
            // ),
            // Expanded(
            //   child: FlatButton(
            //     color: Colors.tealAccent,
            //     onPressed: () {
            //       playSound(6);
            //     },
            //     child: Text("Note 6"),
            //   ),
            // ),
            // Expanded(
            //   child: FlatButton(
            //     color: Colors.purple,
            //     onPressed: () {
            //       playSound(7);
            //     },
            //     child: Text("Note 7"),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
