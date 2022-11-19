import 'package:flutter/material.dart';

import '../../../shared/widgets/custom/atomic/social_block.dart';

class RouterBasics5Slide extends StatelessWidget {
  const RouterBasics5Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 4.0),
          Image.asset(
            'assets/images/go_router.png',
            width: 375,
          ),
          SocialBlock(
            socialInfos: [
              SocialEntry(
                link: 'https://pub.dev/packages/go_router',
              ),
            ],
          )
        ],
      ),
    );
  }
}
