import 'package:flutter/material.dart';
import 'package:go_go_router/shared/types/enums/code_snippets.dart';
import 'package:go_go_router/shared/widgets/custom/composed/code_snippet.dart';

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
                  title: 'imperative_basic',
                  subtitle: 'Go, Go Router!',
                ),
                Divider(height: 0),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'This is the reference project showasing different navigation approaches, from basic, imperative Navigator API to the more advanced, declarative Router API!\n\nYou are currently viewing the example in:'),
                      Text(
                        '\nimperative_basic\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          'This example is showing the basic Navigator approach making use of '),
                      CodeSnippet(
                        code: CodeSnippets.imperativeBasicHome.text,
                      ),
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
