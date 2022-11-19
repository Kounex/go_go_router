import 'package:flutter/material.dart';

import '../widgets/slide_enumeration_block.dart';

class RouterBasics6Slide extends StatelessWidget {
  const RouterBasics6Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SlideEnumerationBlock(
            customEntries: [
              SlideEnumerationEntry(
                text: 'Actual usage very similar to Navigator 1.0',
              ),
              SlideEnumerationEntry(
                text:
                    'Declarative approach minimal and mainly "behind the scenes"',
              ),
              SlideEnumerationEntry(
                text: 'Imperative navigation FTW!',
              ),
            ],
          ),
          SizedBox(height: 64.0),
          Center(
            child: Text(
              'Can we tackle all the cons and challenges so far?!',
            ),
          ),
        ],
      ),
    );
  }
}
