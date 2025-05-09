import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Listados de colores inmutables

final colorListProvider = Provider((ref) => colorList);

//un simple int

final selectedColorProvider = StateProvider<int>((ref) => 0);

// un objeto de tipo APPTheme (customizado) que tiene un constructor que recibe el color y el modo oscuro
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // Constructor initializing the state with a default AppTheme instance
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}


//ver mas en docs del repo y de riverpod
// https://riverpod.dev/docs/concepts/state_notifier