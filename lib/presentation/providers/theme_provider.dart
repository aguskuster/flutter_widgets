


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widgets/config/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final selectedIndexColorProvider = StateProvider((ref) => 0);


final themeNotifierProvider = StateNotifierProvider<ThemeNotifier,AppTheme>((ref) => ThemeNotifier());


class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }
  void changeColorIndex(int index) {
    state = state.copyWith(selectedColor: index);
  }

}