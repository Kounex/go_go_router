import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideScale extends StatelessWidget {
  final void Function(double increment) changeScale;

  const SlideScale({super.key, required this.changeScale});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => this.changeScale(-0.1),
          icon: Icon(CupertinoIcons.minus_circle),
        ),
        IconButton(
          onPressed: () => this.changeScale(0.1),
          icon: Icon(CupertinoIcons.plus_circle),
        ),
      ],
    );
  }
}
