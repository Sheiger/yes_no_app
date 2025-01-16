import 'package:flutter/material.dart';

const Color _customColor = Color(0xff4914f3);

const List<Color> _colorThemes = [
  _customColor,
  Colors.yellow,
  Colors.green,
  Colors.orange,
  Colors.pink,
  Colors.red,
  Colors.blueAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1, 'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme(){
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark
    );
  }
}