import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

GestureDetector iteam({required color, required String sound}) {
  return GestureDetector(
    onTap: () {
      final player = AudioPlayer();
      player.play(AssetSource(sound));
    },
    child: Container(
      color: color,
      height: 100,
      width: double.infinity,
    ),
  );
}
