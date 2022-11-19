import 'package:flutter/material.dart';

import '../../../shared/types/enums/code_snippets.dart';
import '../../../shared/widgets/custom/composed/code_snippet.dart';

class WidgetTree3Slide extends StatelessWidget {
  const WidgetTree3Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 24.0),
          CodeSnippet(
            code: CodeSnippets.navigatorPushBlueprint.text,
          ),
          SizedBox(height: 32.0),
          CodeSnippet(
            code: CodeSnippets.navigatorPop.text,
          ),
        ],
      ),
    );
  }
}
