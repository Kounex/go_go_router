import 'package:flutter/material.dart';

import '../../../shared/widgets/custom/atomic/social_block.dart';

class RouterBasics4Slide extends StatelessWidget {
  const RouterBasics4Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 4.0),
          Image.asset(
            'assets/images/router_packages.png',
            width: 375,
          ),
          SocialBlock(
            socialInfos: [
              SocialEntry(
                link: 'https://fluttergems.dev/routing/',
              ),
            ],
          )
        ],
      ),
    );
  }
}
