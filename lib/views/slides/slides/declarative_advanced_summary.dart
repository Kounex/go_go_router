import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class DeclarativeAdvancedSummarySlide extends StatelessWidget {
  const DeclarativeAdvancedSummarySlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text: 'Pros:',
            ),
            SlideEnumerationEntry(
              text: 'Best of both worlds',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Hides complexity',
              level: 1,
            ),
            SlideEnumerationEntry(
              text:
                  'Solves common routing requirements (guards, redirection, nesting etc.)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Cons:',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: 'Missing "edge cases" still exists (e.g. fragments)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'We need a package',
              level: 1,
            ),
          ],
        )
      ],
    );
  }
}
