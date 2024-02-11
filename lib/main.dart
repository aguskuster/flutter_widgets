import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/app_theme.dart';
import 'package:flutter_widgets/presentation/screens/buttons/buttons_screen.dart';
import 'package:flutter_widgets/presentation/screens/cards/cards_screen.dart';
import 'package:flutter_widgets/presentation/screens/home/home_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material3 Theme',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      home: HomeScreen(),
      routes: {
        '/buttons' : (context) => const ButtonsScreen(),
        '/cards' : (context) => const CardsScreen(),
      },

    
    );
  }
}