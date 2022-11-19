import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class NavigationBasics3Slide extends StatelessWidget {
  const NavigationBasics3Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(height: 12.0),
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text: 'You might be used to: /path/to/view',
            ),
            SlideEnumerationEntry(
              text: 'More guidance on what should be navigateable',
            ),
            SlideEnumerationEntry(
              text: 'Currently we can push any widget',
            ),
            SlideEnumerationEntry(
              text: 'Predefined routes enable a common ground',
            ),
          ],
        )
      ],
    );
  }
}
