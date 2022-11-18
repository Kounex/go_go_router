import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_go_router/shared/widgets/custom/composed/slide_scaffold.dart';
import 'package:go_go_router/views/slides/introduction.dart';

class SlidesView extends StatelessWidget {
  final int id;

  const SlidesView({
    super.key,
    this.id = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SlideScaffold(
          slides: [
            Slide(
              content: IntroductionSlide(),
            ),
          ],
        ),
        Positioned(
          bottom: 24.0,
          child: Card(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.chevron_left),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.chevron_left_2),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
