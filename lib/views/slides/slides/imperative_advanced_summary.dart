import 'package:flutter/material.dart';
import 'package:go_go_router/shared/widgets/custom/atomic/social_block.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class ImperativeAdvancedSummarySlide extends StatelessWidget {
  const ImperativeAdvancedSummarySlide({super.key});

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
              text:
                  'Still straight forward and gets the job done (we will tackle this soon, I promise 👀)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text:
                  'Better navigation journey and some good restrictions (not everything is pushable)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Cons:',
              extraTopSpacing: 4.0,
            ),
            SlideEnumerationEntry(
              text:
                  'Still some loose restrictions (missing guards, mix navigations etc.)',
              level: 1,
            ),
            SlideEnumerationEntry(
              text: 'Still imperative not declarative',
              level: 1,
            ),
          ],
        ),
        SocialBlock(socialInfos: [
          SocialEntry(
            link:
                'https://github.com/Kounex/obs_blade/blob/master/lib/utils/routing_helper.dart',
          ),
        ])
      ],
    );
  }
}
