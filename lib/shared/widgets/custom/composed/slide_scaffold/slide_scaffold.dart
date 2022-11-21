import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_go_router/shared/widgets/base/card.dart';
import 'package:go_go_router/shared/widgets/base/web_scaffold.dart';
import 'package:go_go_router/shared/widgets/custom/composed/slide_scaffold/keyboard_listener.dart';
import 'package:go_go_router/shared/widgets/custom/composed/slide_scaffold/number.dart';
import 'package:go_go_router/shared/widgets/custom/composed/slide_scaffold/scale.dart';

import 'controls.dart';

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

class SlideScaffold extends StatefulWidget {
  final int? id;
  final PageController? controller;
  final List<Slide> slides;

  const SlideScaffold({
    super.key,
    this.id,
    this.controller,
    required this.slides,
  });

  @override
  State<SlideScaffold> createState() => _SlideScaffoldState();
}

class _SlideScaffoldState extends State<SlideScaffold> {
  late int _id;
  late PageController _controller;

  double _slideScale = 1.0;

  @override
  void initState() {
    super.initState();

    _id = this.widget.id ?? 1;
    _controller =
        this.widget.controller ?? PageController(initialPage: _id - 1);
  }

  void _changeSlideScale(double increment) {
    setState(() => _slideScale += increment);
  }

  @override
  Widget build(BuildContext context) {
    return SlideKeyboardListener(
      controller: _controller,
      id: _id,
      amountSlides: this.widget.slides.length,
      child: Stack(
        alignment: Alignment.center,
        children: [
          WebScaffold(
            body: AnimatedScale(
              scale: _slideScale,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeIn,
              child: Center(
                child: BaseCard(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
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
                    if (this.widget.slides.length > 1)
                      Positioned(
                        bottom: 18,
                        right: 32,
                        child: Builder(
                          builder: (context) {
                            return SlideNumber(
                              controller: _controller,
                              id: _id,
                            );
                          },
                        ),
                      ),
                  ],
                  child: SizedBox(
                    height: min(400, MediaQuery.of(context).size.height / 2),
                    child: PageView.builder(
                      controller: _controller,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: this.widget.slides.length,
                      itemBuilder: (context, index) => SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (this.widget.slides[index].title != null) ...[
                                Text(
                                  this.widget.slides[index].title!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline!
                                      .copyWith(
                                        fontSize: 32.0,
                                        letterSpacing: 2.0,
                                      ),
                                ),
                                SizedBox(height: 6.0),
                                Divider(height: 1),
                                SizedBox(height: 12.0),
                              ],
                              Flexible(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: this.widget.slides[index].content ??
                                      SizedBox(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (this.widget.slides.length > 1)
            Positioned(
              bottom: 12.0 + MediaQuery.of(context).viewInsets.bottom,
              child: Card(
                /// Using builder to delay building this subtree, this allows
                /// the [PageView] inside [SlideScaffold] to be built and make
                /// use of the [PageController], therefore it's possible to access
                /// the [page] property of the controller
                child: Builder(
                  builder: (context) {
                    return SlideControls(
                      controller: _controller,
                      id: _id,
                      amountSlides: this.widget.slides.length,
                    );
                  },
                ),
              ),
            ),
          Positioned(
            top: 24.0,
            right: 24.0,
            child: Card(
              child: SlideScale(
                changeScale: _changeSlideScale,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
