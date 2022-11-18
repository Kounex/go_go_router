import 'package:flutter/material.dart';

class ThemeUtils {
  static ThemeData get base => ThemeData.from(
        colorScheme: ColorScheme.dark(
          primary: Colors.amber,
          secondary: Colors.amberAccent,
        ),
      );
}
