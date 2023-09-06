import 'package:flutter/material.dart';
import 'package:tune_app/componets/componet.dart';
import 'package:tune_app/moduls/tune_model.dart';

class tuneScreen extends StatelessWidget {
  const tuneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<tune> Data = [
      tune(color: Colors.red, sounds: 'sounds/note1.wav'),
      tune(color: Colors.yellow, sounds: 'sounds/note2.wav'),
      tune(color: Colors.lightBlue, sounds: 'sounds/note3.wav'),
      tune(color: Colors.purple, sounds: 'sounds/note4.wav'),
      tune(color: Colors.green, sounds: 'sounds/note5.wav'),
      tune(color: Colors.orange, sounds: 'sounds/note6.wav'),
      tune(color: Colors.teal, sounds: 'sounds/note7.wav'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Tune ',
        ),
        backgroundColor: const Color(0xff253238),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Data.length,
              itemBuilder: (context, index) {
                return iteam(
                    color: Data[index].color, sound: Data[index].sounds);
              },
            ),
          ),
        ],
      ),
    );
  }
}
