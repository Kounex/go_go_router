import 'package:flutter/material.dart';

import '../../../shared/types/enums/code_snippets.dart';
import '../../../shared/widgets/custom/composed/code_snippet.dart';

class WidgetTree5Slide extends StatelessWidget {
  const WidgetTree5Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 12.0),
          CodeSnippet(
            code: CodeSnippets.stackExample.text,
          ),
          SizedBox(height: 24.0),
          Image.asset(
            'assets/images/widget_tree_4.png',
            width: 175,
          ),
        ],
      ),
    );
  }
}
