import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class DisclaimerSlide extends StatelessWidget {
  const DisclaimerSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          entries: [
            'This project and approach is highly opinionated!',
            'This project is not a blueprint for an overall app design',
            'There is no general "right or wrong"',
            'Good practices, common grounds, different flavours...',
            'Take everything with a grain of salt - use whatever is useful to you',
          ],
        )
      ],
    );
  }
}
