import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class DeclarativeBasicSummarySlide extends StatelessWidget {
  const DeclarativeBasicSummarySlide({super.key});

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
              text: 'Offers a mighty API',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Possible to solve all the needs',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Cons:',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text: 'It\'s not basic at all',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Intended approach (fully declarative) can get messy fast',
              level: 1,
            ),
            SlideEnumerationEntry(
              text:
                  'Solving common production use cases requires a lot of code',
              level: 1,
            ),
          ],
        )
      ],
    );
  }
}
