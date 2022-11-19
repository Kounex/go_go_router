import 'package:flutter/material.dart';

import '../../../shared/widgets/custom/atomic/social_block.dart';

class RouterBasics1Slide extends StatelessWidget {
  const RouterBasics1Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 4.0),
          Image.asset(
            'assets/images/router_whitepaper.png',
            width: 300,
          ),
          SocialBlock(
            socialInfos: [
              SocialEntry(
                link:
                    'https://docs.google.com/document/d/1Q0jx0l4-xymph9O6zLaOY4d_f7YFpNWX_eGbzYxr9wY/edit',
              ),
            ],
          )
        ],
      ),
    );
  }
}
