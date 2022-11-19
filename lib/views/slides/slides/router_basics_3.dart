import 'package:flutter/material.dart';

class RouterBasics3Slide extends StatelessWidget {
  const RouterBasics3Slide({super.key});

  @override
  Widget build(BuildContext context) {
    final double imageWidth = 250.0;
    final double paddingBase = 24.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/impression_5.png',
          width: imageWidth,
        ),
        SizedBox(height: 4.0),
        Padding(
          padding: EdgeInsets.only(left: paddingBase),
          child: Image.asset(
            'assets/images/impression_3.png',
            width: imageWidth,
          ),
        ),
        SizedBox(height: 4.0),
        Padding(
          padding: EdgeInsets.only(left: paddingBase * 2),
          child: Image.asset(
            'assets/images/impression_1.png',
            width: imageWidth,
          ),
        ),
        SizedBox(height: 4.0),
        Padding(
          padding: EdgeInsets.only(left: paddingBase * 3),
          child: Image.asset(
            'assets/images/impression_2.png',
            width: imageWidth,
          ),
        ),
        SizedBox(height: 4.0),
        Padding(
          padding: EdgeInsets.only(left: paddingBase * 4),
          child: Image.asset(
            'assets/images/impression_4.png',
            width: 250,
          ),
        ),
      ],
    );
  }
}
