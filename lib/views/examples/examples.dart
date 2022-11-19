import 'package:flutter/material.dart';
import 'package:go_go_router/apps/declarative_advanced/views/app.dart';
import 'package:go_go_router/apps/declarative_basic/views/app.dart';
import 'package:go_go_router/apps/imperative_advanced/views/app.dart';

import '../../../shared/widgets/custom/atomic/crooked_actions.dart';
import '../../apps/imperative_basic/views/app.dart';
import '../../shared/widgets/custom/composed/slide_scaffold/slide_scaffold.dart';
import 'widgets/example_wrapper.dart';

class ExamplesView extends StatelessWidget {
  const ExamplesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideScaffold(
      slides: [
        Slide(
          title: 'Navigation strategies.'.toUpperCase(),
          content: Center(
            child: Column(
              children: [
                SizedBox(height: 12.0),
                CrookedActions(
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
                          child: ImpererativeAdvancedApp(),
                        ),
                      ),
                    ),
                    CrookedAction(
                      text: 'Declarative Basic',
                      onPressed: () => runApp(
                        ExampleWrapper(
                          child: DeclarativeBasicApp(),
                        ),
                      ),
                    ),
                    CrookedAction(
                      text: 'Declarative Advanced',
                      onPressed: () => runApp(
                        ExampleWrapper(
                          child: DeclarativeAdvancedApp(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
