// Screen sizes:
import 'package:flutter/material.dart';

class Constants {
  //! Size:
  static const double titleMediumFontSize = 16;
  static const double drawerMenuWith = 220;

  //!Colors Dark:
  static const Color darkCanvasColor = Color(0xFF2A2D3E);
  static const Color darkBackgroundColor = Color(0xFF212332);
  static const Color darkDividerColor = Colors.white10;
  static const Color darkTitleColor = Colors.amber;
  static const Color darkLabelColor = Colors.teal;
  static const Color darkPrimaryColor = Colors.amber;
  static const Color darkOnPrimaryColor = Color(0xFF212332);
  static const Color darkSecondaryColor = Colors.teal;
  static const Color darkErrorColor = Colors.redAccent;
  static const Color darkOnErrorColor = Color(0xFF212332);
  static const Color darkTertiaryColor = Colors.lightGreen;
  static const Color darkOnTertiaryColor = Color(0xFF212332);

  //!Colors Light:
  static const Color lightCanvasColor = Colors.white;
  static const Color lightBackgroundColor = Color.fromARGB(255, 233, 232, 232);
  static const Color lightDividerColor = Colors.black12;
  static const Color lightTitleColor = Color.fromARGB(255, 33, 35, 50);
  static const Color lightLabelColor = Color.fromARGB(255, 130, 26, 0);
  static const Color lightPrimaryColor = lightTitleColor;
  static const Color lightOnPrimaryColor = Colors.white;
  static const Color lightSecondaryColor = Color.fromARGB(255, 130, 26, 0);
  static const Color lightErrorColor = Color.fromARGB(255, 130, 26, 0);
  static const Color lightOnErrorColor = Colors.white;
  static const Color lightTertiaryColor = Color.fromARGB(255, 46, 122, 49);
  static const Color lightOnTertiaryColor = Colors.white;

  //! Borders:
  static RoundedRectangleBorder getBorder({
    required Color borderColor,
    double radius = 10,
    double borderWidth = .7,
  }) =>
      RoundedRectangleBorder(
        side: BorderSide(color: borderColor, width: borderWidth),
        borderRadius: BorderRadius.circular(radius),
      );

  static const List<String> trialExamType = ['90 Soru', '75 Soru'];

  static double parseDouble(Map<String, dynamic>? json, String key, {double defaultValue = 0.0}) {
    if (json == null) return defaultValue;

    if (!json.containsKey(key)) return defaultValue;

    var rawValue = json[key];
    if (rawValue == null) return defaultValue;

    if (rawValue is double) return rawValue;

    if (rawValue is int) {
      return rawValue.toDouble();
    }

    if (rawValue is String) {
      return double.tryParse(rawValue) ?? defaultValue;
    }

    return defaultValue;
  }
}
