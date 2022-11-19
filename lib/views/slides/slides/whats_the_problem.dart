import 'package:flutter/material.dart';
import 'package:go_go_router/views/slides/widgets/slide_enumeration_block.dart';

class WhatsTheProblemSlide extends StatelessWidget {
  const WhatsTheProblemSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideEnumerationBlock(
          customEntries: [
            SlideEnumerationEntry(
              text:
                  'From the Flutter docs:',
            ),
            SlideEnumerationEntry(
              text:
                  'Small applications without complex deep linking can use Navigator, while apps with specific deep linking and navigation requirements should also use the Router to correctly handle deep links on Android and iOS [...]',
              level: 1,
            ),
            SlideEnumerationEntry(
              text:
                  'Although named routes can handle deep links, the behavior is always the same and can’t be customized. When a new deep link is received by the platform, Flutter pushes a new Route onto the Navigator regardless where the user currently is.',
              level: 1,
            ),  
          ],
        ),
        SocialBlock(socialInfos: [
          SocialEntry(
            link:
                'https://docs.flutter.dev/development/ui/navigation',
          ),
        ])
      ],
    );
  }
}
