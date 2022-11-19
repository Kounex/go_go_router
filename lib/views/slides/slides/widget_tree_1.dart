import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class WidgetTree1Slide extends StatelessWidget {
  const WidgetTree1Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/widget_tree_1.png',
              width: 200,
            ),
            SizedBox(width: 12.0),
            Flexible(
              child: SlideEnumerationBlock(
                customEntries: [
                  SlideEnumerationEntry(
                    text: 'Hey! That\'s how my code looks like!',
                  ),
                  SlideEnumerationEntry(
                    text: 'Composition of the widgets in our app',
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
