import 'package:flutter/material.dart';

import '../../../../shared/widgets/base/web_scaffold.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SizedBox(),
    );
  }
}
