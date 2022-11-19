import 'package:flutter/material.dart';
import 'package:go_go_router/shared/widgets/custom/atomic/social_block.dart';
import 'package:ionicons/ionicons.dart';

class ThankYouSlide extends StatelessWidget {
  const ThankYouSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 64.0),
        Text(
          'Thank You!',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(height: 12.0),
        Divider(height: 0),
        SizedBox(height: 12.0),
        SocialBlock(
          socialInfos: [
            SocialEntry(
              icon: Ionicons.logo_github,
              linkText: 'Kounex',
              link: 'https://github.com/Kounex',
            ),
            SocialEntry(
              icon: Ionicons.logo_twitter,
              linkText: '@Kounexx',
              link: 'https://twitter.com/Kounexx',
            ),
            SocialEntry(
              icon: Ionicons.logo_linkedin,
              linkText: 'René Schramowski',
              link:
                  'https://www.linkedin.com/in/ren%C3%A9-schramowski-a35342157/',
            ),
            SocialEntry(
              icon: Ionicons.logo_mastodon,
              linkText: '@kounex@hachyderm.io',
              link: 'https://hachyderm.io/@kounex',
            ),
          ],
        )
      ],
    );
  }
}
