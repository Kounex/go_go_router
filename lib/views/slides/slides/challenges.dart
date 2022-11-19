import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class ChallengesSlide extends StatelessWidget {
  const ChallengesSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text: 'URL handling',
            ),
            SlideEnumerationEntry(
              text:
                  'Users can put in any URL which should lead to the desired navigation path',
              level: 1,
            ),
            SlideEnumerationEntry(
              text:
                  'Users can manipulate navigations, put in non existing paths etc.',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Navigation itself needs to be reflected in the URL',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Make use of parameters (:id, ?id=, #id etc.)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Manual deeplinks',
              extraTopSpacing: 4.0,
            ),
          ],
        )
      ],
    );
  }
}
