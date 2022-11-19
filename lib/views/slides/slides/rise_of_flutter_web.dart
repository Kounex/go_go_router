import 'package:flutter/material.dart';

class RiseOfFlutterWebSlide extends StatelessWidget {
  const RiseOfFlutterWebSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4.0),
          Image.asset(
            'assets/images/flutter_web.jpeg',
            width: 400,
          ),
          Text(
            'https://kodytechnolab.com/flutter-for-web-development',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
