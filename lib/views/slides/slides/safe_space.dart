import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class SafeSpaceSlide extends StatelessWidget {
  const SafeSpaceSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          entries: [
            'We all want to learn and improve',
            'I\'m learning myself',
            'Let\'s ask all the questions',
            'Be open for new ideas',
            'Please assume good intent',
            'Let\'s have fun!',
          ],
        )
      ],
    );
  }
}
