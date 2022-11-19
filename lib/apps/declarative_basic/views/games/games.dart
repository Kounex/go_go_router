import 'package:flutter/material.dart';

import '../../../../shared/widgets/base/web_scaffold.dart';

class GamesView extends StatelessWidget {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      appBar: AppBar(
        title: Text('Games'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          /// Let's navigate here!
          onTap: () {},
          title: Text(
            'Game ${index.toString()}',
          ),
        ),
      ),
    );
  }
}
