import 'package:flutter/material.dart';

import '../../../shared/types/enums/code_snippets.dart';
import '../../../shared/widgets/custom/composed/code_snippet.dart';

class WidgetTree7Slide extends StatelessWidget {
  const WidgetTree7Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 32.0),
          Image.asset(
            'assets/images/widget_tree_5.png',
            width: 175,
          ),
          SizedBox(height: 24.0),
          CodeSnippet(
            code: CodeSnippets.navigatorPushBlueprint.text,
          ),
        ],
      ),
    );
  }
}
