import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:forge2d_game/components/game.dart';

void main() {
  runApp(
    // GameWidget : Instance untuk membuat game
    // Ada 2 cara untuk menginisiasi instance-nya:
    // - GameWidget.controlled({gameFactory})
    //   Lebih mudah untuk nge-manage state game-nya karena menggunakan factory pattern
    //   Contohnya adalah untuk me-restart game
    // - GameWidget({game})
    //   Karena langsung berisi game-nya, untuk managing state,
    //   perlu dibuat manual (setState atau menggunakan state management lain)
    const GameWidget.controlled(
      gameFactory: MyPhysicsGame.new,
    ),
  );
}
