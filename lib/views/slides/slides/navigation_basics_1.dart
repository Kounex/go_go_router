import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class NavigationBasics1Slide extends StatelessWidget {
  const NavigationBasics1Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text: 'What is meant by "Navigation" in applications?',
            ),
            SlideEnumerationEntry(
              text: 'Changing view content by changing the context',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Usually with Single Page Applications (SPA)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Flutter apps are SPAs, right?',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: 'Yes!',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Great! So Flutter gives us the tooling for that?',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: 'Uhh... well... yeah!',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Oh nice! So it\'s easy, right?',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: '...',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: '... It\'s easy... right?',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: '...',
              level: 1,
            ),
          ],
        )
      ],
    );
  }
}
