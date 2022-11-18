import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_go_router/shared/widgets/base/card.dart';
import 'package:go_go_router/shared/widgets/base/web_scaffold.dart';

class Slide {
  final String? title;
  final Widget? content;

  final bool decoration;

  const Slide({
    this.title,
    this.content,
    this.decoration = true,
  });
}

class SlideScaffold extends StatelessWidget {
  final List<Slide> slides;

  const SlideScaffold({
    super.key,
    required this.slides,
  });

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      body: Center(
        child: BaseCard(
          decorations: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Transform.rotate(
                angle: pi / 3,
                child: Transform.translate(
                  offset: Offset(150, 80),
                  child: Container(
                    width: 150.0,
                    height: 250.0,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
          ],
          child: SizedBox(
            height: min(400, MediaQuery.of(context).size.height / 2),
            child: PageView.builder(
              itemCount: this.slides.length,
              itemBuilder: (context, index) => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (this.slides[index].title != null) ...[
                      Text(
                        'Navigation strategies.'.toUpperCase(),
                        style: Theme.of(context).textTheme.overline!.copyWith(
                              fontSize: 32.0,
                              letterSpacing: 2.0,
                            ),
                      ),
                      SizedBox(height: 12.0),
                      Divider(height: 0),
                      SizedBox(height: 24.0),
                    ],
                    Flexible(
                      child: Align(
                        alignment: Alignment.center,
                        child: this.slides[index].content ?? SizedBox(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
