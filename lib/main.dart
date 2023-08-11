import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int number){
    final play = AudioPlayer();
    play.play(AssetSource('note$number.wav'));

  }

  Expanded CreateButton(Color color, int number){
    return Expanded(
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                      backgroundColor: color, // Background color
                    ),
                    onPressed: () {
                      playsound(number);
                    },
                    child: Text('')),
              );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             CreateButton(Color.fromRGBO(224, 27, 53, 1),1),
             CreateButton(Color.fromARGB(255, 255, 82, 52),2),
             CreateButton(Color.fromARGB(255, 221, 239, 19),3),
             CreateButton(Color.fromARGB(255, 23, 239, 19),4),
             CreateButton(Color.fromARGB(255, 23, 80, 167),5),
             CreateButton(Color.fromARGB(255, 161, 12, 161),6),
             CreateButton(Color.fromARGB(255, 238, 52, 255),7),
              // Expanded(
              //   child: ElevatedButton(
              //      style: ElevatedButton.styleFrom(
              //         backgroundColor: Color.fromRGBO(224, 27, 53, 1), // Background color
              //       ),
              //       onPressed: () {
              //         playsound(6);
              //       },
              //       child: Text('')),
              // ),
             
              //     Expanded(
              //       child: ElevatedButton(
              //                      style: ElevatedButton.styleFrom(
              //         backgroundColor: Color.fromARGB(255, 255, 82, 52), // Background color
              //       ),
              //       onPressed: () {
              //         playsound(3);
              //       },
              //       child: Text('')),
              //     ),
              //      Expanded(
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: Color.fromARGB(255, 221, 239, 19) // Background color
              //       ),
              //       onPressed: () {
              //         playsound(2);
              //       },
              //       child: Text('')),
              // ),
              //  Expanded(
              //   child: ElevatedButton(
              //      style: ElevatedButton.styleFrom(
              //         backgroundColor: Color.fromARGB(255, 23, 239, 19), // Background color
              //       ),
              //       onPressed: () {
              //         playsound(5);
              //       },
              //       child: Text('')),
              // ),
                  
              //  Expanded(
              //   child: ElevatedButton(
              //      style: ElevatedButton.styleFrom(
              //        backgroundColor: Color.fromARGB(255, 23, 80, 167),  // Background color
              //       ),
              //       onPressed: () {
              //         playsound(1);
              //       },
              //       child: Text('')),
              // ),
              //  Expanded(
              //   child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: Color.fromARGB(255, 161, 12, 161), // Background color
              //       ),
              //       onPressed: () {
              //         playsound(7);
              //       },
              //       child: Text('')),
              // ),
           
              // Expanded(
              //   child: ElevatedButton(
              //      style: ElevatedButton.styleFrom(
              //         backgroundColor: Color.fromARGB(255, 238, 52, 255), // Background color
              //       ),
              //       onPressed: () {
              //         playsound(4);
              //       },
              //       child: Text('')),
              // ),
             
              
             
            ],
          ),
        ),
      ),
    );
  }
}
