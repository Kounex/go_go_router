import 'package:flutter/material.dart';

import '../../../shared/types/enums/code_snippets.dart';
import '../../../shared/widgets/custom/composed/code_snippet.dart';

class WidgetTree4Slide extends StatelessWidget {
  const WidgetTree4Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 24.0),
          Image.asset(
            'assets/images/widget_tree_3.png',
            width: 175,
          ),
          SizedBox(height: 24.0),
          CodeSnippet(
            code: CodeSnippets.navigatorPushExample.text,
          ),
          SizedBox(height: 24.0),
        ],
      ),
    );
  }
}
