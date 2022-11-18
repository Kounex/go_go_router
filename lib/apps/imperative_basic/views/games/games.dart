import 'package:flutter/material.dart';

import '../../../../shared/widgets/base/web_scaffold.dart';

class GamesView extends StatelessWidget {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverAppBar.large(
            title: const Text('Games'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Text(
                index.toString(),
              ),
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
