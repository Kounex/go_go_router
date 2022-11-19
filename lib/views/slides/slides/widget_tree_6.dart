import 'package:flutter/material.dart';

import '../../../shared/types/enums/code_snippets.dart';
import '../../../shared/widgets/custom/composed/code_snippet.dart';

class WidgetTree6Slide extends StatelessWidget {
  const WidgetTree6Slide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 12.0),
          CodeSnippet(
            code: CodeSnippets.dialogExample.text,
          ),
        ],
      ),
    );
  }
}
