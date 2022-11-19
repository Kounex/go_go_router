import 'package:flutter/material.dart';

class WidgetTree2Slide extends StatelessWidget {
  const WidgetTree2Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 32.0),
          Image.asset(
            'assets/images/widget_tree_2.png',
            width: 175,
          ),
          SizedBox(height: 24.0),
          Image.asset(
            'assets/images/widget_tree_3.png',
            width: 175,
          ),
          SizedBox(height: 24.0),
          Divider(height: 0),
          SizedBox(height: 24.0),
          Text('What\'s the difference?'),
        ],
      ),
    );
  }
}
