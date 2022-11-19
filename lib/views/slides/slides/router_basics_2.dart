import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

import '../../../shared/widgets/custom/atomic/social_block.dart';

class RouterBasics2Slide extends StatelessWidget {
  const RouterBasics2Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 6.0),
        Center(
          child: Image.asset(
            'assets/images/router_overview.png',
            width: 400,
          ),
        ),
        SizedBox(height: 12.0),
        SlideEnumerationBlock(
          entries: [
            '"When the state in your app changes, you can precisely control the stack of screens by providing a list of Page objects using the Navigator.pages parameter."',
          ],
        ),
        SocialBlock(
          socialInfos: [
            SocialEntry(
              link: 'https://docs.flutter.dev/development/ui/navigation',
            ),
          ],
        ),
      ],
    );
  }
}
