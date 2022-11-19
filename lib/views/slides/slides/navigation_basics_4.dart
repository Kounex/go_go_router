import 'package:flutter/material.dart';

import '../../../shared/types/enums/code_snippets.dart';
import '../../../shared/widgets/custom/composed/code_snippet.dart';

class NavigationBasics4Slide extends StatelessWidget {
  const NavigationBasics4Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12.0),
        CodeSnippet(
          code: CodeSnippets.navigatorRoutes.text,
        ),
        SizedBox(height: 24.0),
        CodeSnippet(
          code: CodeSnippets.navigatorPushNamed.text,
        ),
      ],
    );
  }
}
