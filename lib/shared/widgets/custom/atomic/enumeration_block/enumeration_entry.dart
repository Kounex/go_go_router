import 'dart:ui';

import 'package:flutter/material.dart';

final List<String> kEnumerationBullets = [
  '·',
];

class EnumerationEntry extends StatelessWidget {
  final String? text;
  final Widget? customEntry;

  final bool useEnumerationChar;
  final double enumerationTopPadding;
  final double? enumerationSize;

  final double extraTopSpacing;

  final int? number;
  final double levelSpacing;
  final int level;

  const EnumerationEntry({
    Key? key,
    this.text,
    this.customEntry,
    this.useEnumerationChar = true,
    this.enumerationTopPadding = 0,
    this.enumerationSize,
    this.extraTopSpacing = 0.0,
    this.number,
    this.levelSpacing = 12.0,
    this.level = 0,
  })  : assert(text != null || customEntry != null && level > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double enumerationSize = this.enumerationSize ??
        Theme.of(context).textTheme.bodyText1!.fontSize!;

    return Padding(
      padding: EdgeInsets.only(top: this.extraTopSpacing),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (this.useEnumerationChar)
            Padding(
              padding: EdgeInsets.only(
                top: this.enumerationTopPadding,
                left: this.levelSpacing * (this.level + 1),
                right: 12.0,
              ),
              child: this.number != null
                  ? Text(
                      '${this.number.toString()}.',
                      style: TextStyle(fontSize: enumerationSize),
                    )
                  : Transform.scale(
                      scale: 3.0,
                      origin: const Offset(1, 1),
                      child: Text(
                        kEnumerationBullets[
                            this.level % kEnumerationBullets.length],
                        style: TextStyle(fontSize: enumerationSize),
                      ),
                    ),
            ),
          Flexible(
            child: this.text != null
                ? Text(
                    this.text!,
                    style: const TextStyle(
                      fontFeatures: [
                        FontFeature.tabularFigures(),
                      ],
                    ),
                  )
                : this.customEntry!,
          ),
        ],
      ),
    );
  }
}
