import 'package:flutter/material.dart';

extension ColorBasics on Color {
  Color blackWhite() =>
      this.computeLuminance() <= 0.2 ? Colors.white : Colors.black;
}
