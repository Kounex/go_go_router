import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class ImperativeBasicSummarySlide extends StatelessWidget {
  const ImperativeBasicSummarySlide({super.key});

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
              text: 'Very straight forward',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Gets the job done (we will tackle this soon)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Cons:',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: 'Hard to keep track of navigation journeys',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'No real restrictions on navigation',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Imperative not declarative',
              level: 1,
            ),
          ],
        )
      ],
    );
  }
}
