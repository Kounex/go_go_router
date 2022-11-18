import 'package:flutter/material.dart';
import 'package:go_go_router/shared/widgets/custom/composed/slide_scaffold/slide_scaffold.dart';
import 'package:go_go_router/views/slides/example_hvv.dart';
import 'package:go_go_router/views/slides/example_mail.dart';
import 'package:go_go_router/views/slides/example_mhr.dart';
import 'package:go_go_router/views/slides/example_reddit.dart';
import 'package:go_go_router/views/slides/introduction.dart';
import 'package:go_go_router/views/slides/navigation_basics_1.dart';
import 'package:go_go_router/views/slides/navigation_basics_2.dart';

import 'example_steam.dart';

class SlidesView extends StatefulWidget {
  final int id;

  const SlidesView({
    super.key,
    this.id = 0,
  });

  @override
  State<SlidesView> createState() => _SlidesViewState();
}

class _SlidesViewState extends State<SlidesView> {
  late PageController _controller;

  List<Slide> _slides = [
    Slide(
      content: IntroductionSlide(),
    ),
    Slide(
      title: 'Talking about navigation...',
      content: NavigationBasics1(),
    ),
    Slide(
      title: 'Example: Mail',
      content: ExampleMail(),
    ),
    Slide(
      title: 'Example: Reddit',
      content: ExampleReddit(),
    ),
    Slide(
      title: 'Example: HVV',
      content: ExampleHVV(),
    ),
    Slide(
      title: 'Example: MHR',
      content: ExampleMHR(),
    ),
    Slide(
      title: 'Example: Steam',
      content: ExampleSteam(),
    ),
    Slide(
      content: NavigationBasics2(),
    ),
  ];

  @override
  void initState() {
    super.initState();

    _controller = PageController(initialPage: this.widget.id - 1);
  }

  @override
  Widget build(BuildContext context) {
    return SlideScaffold(
      controller: _controller,
      slides: _slides,
      id: this.widget.id,
    );
  }
}
