import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widgets/presentation/providers/theme_provider.dart';

class ThemeScreen extends ConsumerWidget {
  static const String name = 'theme_screen';
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(themeNotifierProvider.notifier).toggleDarkMode();
              },
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode)),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(colorListProvider);
    final selectedIndex = ref.watch(themeNotifierProvider).selectedColor;
    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final Color color = colors[index];
          return RadioListTile(
              title: Text(
                'Este color',
                style: TextStyle(color: color),
              ),
              subtitle: Text("${color.value}"),
              activeColor: color,
              value: index,
              groupValue: selectedIndex,
              onChanged: (value) {
                ref.read(themeNotifierProvider.notifier).changeColorIndex(value!);
              });
        });
  }
}
