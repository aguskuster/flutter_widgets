import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widgets/config/app_theme.dart';

import 'package:flutter_widgets/config/router/app_router.dart';
import 'package:flutter_widgets/presentation/providers/theme_provider.dart';




void main() {
  runApp(
    // To install Riverpod, we need to add this widget above everything else.
    // This should not be inside "MyApp" but as direct parameter to "runApp".
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDarkMode = ref.watch(isDarkModeProvider);
    // final selectedColor = ref.watch(selectedIndexColorProvider);
    final appTheme = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),

    
    );
  }

 
}