import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/app_theme.dart';
import 'package:flutter_widgets/config/router/app_router.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Material3 Theme',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).getTheme(),

    
    );
  }
}