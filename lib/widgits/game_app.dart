import 'package:flutter/material.dart';
import 'package:space_invaders/space_invaders.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late final SpaceInvaders game;

  @override
  void initState() {
    super.initState();
    game = SpaceInvaders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
      color: Color(0xff000000),
      image: DecorationImage(
        image: AssetImage('assets/background.png'),
        fit: BoxFit.cover,
      ),
    )));
  }
}
