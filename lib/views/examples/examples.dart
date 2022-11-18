import 'package:flutter/material.dart';

import '../../../shared/widgets/custom/atomic/crooked_actions.dart';
import '../../shared/widgets/custom/composed/slide_scaffold.dart';
import '../../apps/imperative_basic/views/app.dart';
import 'widgets/example_wrapper.dart';

class ExamplesView extends StatelessWidget {
  const ExamplesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideScaffold(
      slides: [
        Slide(
          title: 'Navigation strategies.'.toUpperCase(),
          content: CrookedActions(
            actions: [
              CrookedAction(
                text: 'Imperative Basic',
                onPressed: () => runApp(
                  ExampleWrapper(
                    child: ImpererativeBasicApp(),
                  ),
                ),
              ),
              CrookedAction(
                text: 'Imperative Advanced',
                onPressed: () => runApp(
                  ExampleWrapper(
                    child: ImpererativeBasicApp(),
                  ),
                ),
              ),
              CrookedAction(
                text: 'Declarative Basic',
                onPressed: () => runApp(
                  ExampleWrapper(
                    child: ImpererativeBasicApp(),
                  ),
                ),
              ),
              CrookedAction(
                text: 'Declarative Advanced',
                onPressed: () => runApp(
                  ExampleWrapper(
                    child: ImpererativeBasicApp(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
