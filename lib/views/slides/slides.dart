import 'package:flutter/material.dart';
import 'package:go_go_router/shared/widgets/custom/composed/slide_scaffold/slide_scaffold.dart';
import 'package:go_go_router/views/slides/slides/challenges.dart';
import 'package:go_go_router/views/slides/slides/exercise_time.dart';
import 'package:go_go_router/views/slides/slides/imperative_advanced_summary.dart';
import 'package:go_go_router/views/slides/slides/imperative_basic_summary.dart';
import 'package:go_go_router/views/slides/slides/rise_of_flutter_web.dart';
import 'package:go_go_router/views/slides/slides/safe_space.dart';
import 'package:go_go_router/views/slides/slides/thank_you.dart';
import 'package:go_go_router/views/slides/slides/whats_the_problem.dart';

import 'slides/disclaimer.dart';
import 'slides/example_hvv.dart';
import 'slides/example_mail.dart';
import 'slides/example_mhr.dart';
import 'slides/example_reddit.dart';
import 'slides/example_steam.dart';
import 'slides/introduction.dart';
import 'slides/navigation_basics_1.dart';
import 'slides/navigation_basics_2.dart';
import 'slides/widget_tree_1.dart';
import 'slides/widget_tree_2.dart';
import 'slides/widget_tree_3.dart';
import 'slides/widget_tree_4.dart';
import 'slides/widget_tree_5.dart';
import 'slides/widget_tree_6.dart';
import 'slides/widget_tree_7.dart';

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
      title: 'Safe Space',
      content: SafeSpaceSlide(),
    ),
    Slide(
      title: 'DISCLAIMER',
      content: DisclaimerSlide(),
    ),
    Slide(
      title: 'So navigation...',
      content: NavigationBasics1Slide(),
    ),
    Slide(
      title: 'Example: Mail',
      content: ExampleMailSlide(),
    ),
    Slide(
      title: 'Example: Reddit',
      content: ExampleRedditSlide(),
    ),
    Slide(
      title: 'Example: HVV',
      content: ExampleHVVSlide(),
    ),
    Slide(
      title: 'Example: MHR',
      content: ExampleMHRSlide(),
    ),
    Slide(
      title: 'Example: Steam',
      content: ExampleSteamSlide(),
    ),
    Slide(
      content: NavigationBasics2Slide(),
    ),
    Slide(
      title: 'Widget Tree',
      content: WidgetTree1Slide(),
    ),
    Slide(
      content: WidgetTree2Slide(),
    ),
    Slide(
      title: 'Navigator API',
      content: WidgetTree3Slide(),
    ),
    Slide(
      content: WidgetTree4Slide(),
    ),
    Slide(
      title: 'Stack',
      content: WidgetTree5Slide(),
    ),
    Slide(
      title: 'Dialog',
      content: WidgetTree6Slide(),
    ),
    Slide(
      content: WidgetTree7Slide(),
    ),
    Slide(
      content: ExerciseTimeSlide(
        text: 'imperative_basic',
      ),
    ),
    Slide(
      title: 'Summary',
      content: ImperativeBasicSummarySlide(),
    ),
    Slide(
      content: ExerciseTimeSlide(
        text: 'imperative_advanced',
      ),
    ),
    Slide(
      title: 'Summary',
      content: ImperativeAdvancedSummarySlide(),
    ),
    Slide(
      title: 'What\'s the problem?!',
      content: WhatsTheProblemSlide(),
    ),
    Slide(
      title: 'The rise of...',
      content: RiseOfFlutterWebSlide(),
    ),
    Slide(
      title: 'Challenges',
      content: ChallengesSlide(),
    ),
    Slide(
      content: ThankYouSlide(),
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
