import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class NavigationBasics2Slide extends StatelessWidget {
  const NavigationBasics2Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text: 'All these navigation types require different approaches',
            ),
            SlideEnumerationEntry(
              text:
                  'Important question: which UI elements should stay when navigating',
            ),
            SlideEnumerationEntry(
              text: 'Flutter basically got 2 API\'s for navigating:',
            ),
            SlideEnumerationEntry(
              text: 'Navigator API (often called Navigator 1.0)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Router API (often called Navigator 2.0)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Both can be used independently or together',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: 'Let\'s understand how it works in Flutter first',
            ),
          ],
        )
      ],
    );
  }
}
