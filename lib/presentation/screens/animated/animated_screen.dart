import 'package:flutter/material.dart';
import 'dart:math' show Random;
class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.redAccent;
  double borderRadius = 10.0;


  void changeShape(){
    final random = Random();
    setState(() {
      width = random.nextInt(300).toDouble();
      height = random.nextInt(300).toDouble();
      color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      borderRadius = random.nextInt(100).toDouble();
    });
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.elasticInOut,
            width: width,
            height: height,
            decoration: BoxDecoration(
                color:color,
                borderRadius: BorderRadius.circular(borderRadius)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:  changeShape,
          child: const Icon(Icons.play_arrow),
        ));
  }
}
