import 'package:flutter/material.dart';

import '../../../types/extensions/color.dart';

class IconBox extends StatelessWidget {
  final IconData icon;
  final double? size;

  final Color? color;

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const IconBox({
    super.key,
    required this.icon,
    this.size,
    this.color,
    this.margin,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin ?? EdgeInsets.all(18.0),
      padding: this.padding ?? EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: this.color ?? Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Icon(
        this.icon,
        size: this.size ?? 36.0,
        color:
            this.color?.blackWhite() ?? Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
