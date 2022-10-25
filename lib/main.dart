import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){ runApp(XylophoneApp());}

class XylophoneApp extends StatelessWidget {
  void playsound(int SoundsNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$SoundsNumber.wav'));
  }

  Expanded buildfunction({Color ButtonColor,int ButtonNumber}){
  return  Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(ButtonColor),
        ),
        onPressed: (){
          playsound(ButtonNumber);
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
            children: [
              buildfunction(ButtonColor:Colors.red,ButtonNumber:1),
              buildfunction(ButtonColor:Colors.orange,ButtonNumber:2),
              buildfunction(ButtonColor:Colors.yellow,ButtonNumber:3),
              buildfunction(ButtonColor:Colors.green,ButtonNumber:4),
              buildfunction(ButtonColor:Colors.teal,ButtonNumber:5),
              buildfunction(ButtonColor:Colors.blue,ButtonNumber:6),
              buildfunction(ButtonColor:Colors.purple,ButtonNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
