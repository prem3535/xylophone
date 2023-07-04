import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber){
    final player=Audio.load();
    player.play('note$soundNumber.wav');
}
   Expanded buildKey({Color color,int soundNumber}){
     return  Expanded(
        child:TextButton(
          Color:color,
          onPressed: (){
            playsound(soundNumber);
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
               buildKey(color:Colors.red,soundNumber:1),
               buildKey(color:Colors.green,soundNumber:2),
               buildKey(color:Colors.yellow,soundNumber:3),
               buildKey(color:Colors.green,soundNumber:4),
               buildKey(color:Colors.teal,soundNumber:5),
               buildKey(color:Colors.blue,soundNumber:6),
               buildKey(color:Colors.purple,soundNumber:7),
              ],
              ),
        ),
      ),
    );
  }
}
