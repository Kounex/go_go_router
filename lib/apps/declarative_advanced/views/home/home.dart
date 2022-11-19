import 'package:flutter/material.dart';

import '../../../../shared/widgets/base/drawer.dart';
import '../../../../shared/widgets/base/web_scaffold.dart';
import '../../../../shared/widgets/custom/composed/view_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      drawer: BaseDrawer(
        entries: [],
      ),
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverAppBar.large(
            title: const Text('Home'),
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                ViewHeader(
                  icon: Icons.home,
                  title: 'declarative_advanced',
                  subtitle: 'Go, Go Router!',
                ),
                Divider(height: 1),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'This is the reference project showcasing different navigation approaches, from basic, imperative Navigator API to the more advanced, declarative Router API!\n\nYou are currently viewing the example in:'),
                      Text(
                        '\ndeclarative_advanced\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          'Feel free to try out the approach we discussed in the workshop / slides here! :)'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
