


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widgets/config/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final selectedIndexColorProvider = StateProvider((ref) => 0);