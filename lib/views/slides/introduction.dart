import 'package:flutter/material.dart';

class IntroductionSlide extends StatelessWidget {
  const IntroductionSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('René Schramowski'),
                SizedBox(height: 6.0),
                Text('Kounex'),
                SizedBox(height: 32.0),
                Text('Solution Architect at Red Hat'),
                SizedBox(height: 6.0),
                Text('Flutter enthusiast since alpha'),
              ],
            ),
            ClipRRect(
              child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/cropped.jpg',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24.0),
        Divider(height: 0),
        SizedBox(height: 32.0),
        Text('- Open Source & Open Knowledge'),
        SizedBox(height: 6.0),
        Text('- Love to explain stuff simple'),
        SizedBox(height: 6.0),
        Text('- Passion for gaming and Badminton'),
      ],
    );
  }
}
