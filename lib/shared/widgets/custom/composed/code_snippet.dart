import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:go_go_router/shared/widgets/base/card.dart';

class CodeSnippet extends StatelessWidget {
  final String code;

  static final double kBarBubbleSize = 10.0;
  static final double kBarBubbleSpacing = 6.0;

  const CodeSnippet({
    super.key,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 24.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 6.0),
                ...[
                  CupertinoColors.systemRed,
                  CupertinoColors.systemOrange,
                  CupertinoColors.systemGreen
                ]
                    .map(
                      (color) => Row(
                        children: [
                          SizedBox(width: kBarBubbleSpacing),
                          Container(
                            height: kBarBubbleSize,
                            width: kBarBubbleSize,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: color,
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
          Divider(height: 1),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            color: Theme.of(context).colorScheme.onPrimary,
            child: SyntaxView(
              code: code, // Code text
              syntax: Syntax.DART, // Language
              syntaxTheme: SyntaxTheme.obsidian()
                ..backgroundColor = Theme.of(context).colorScheme.onPrimary,
              fontSize: 14.0, // Font size
              withZoom: false, // Enable/Disable zoom icon controls
              withLinesCount: true, // Enable/Disable line number
              // expanded: true, // Enable/Disable container expansion
            ),
          ),
        ],
      ),
    );
  }
}
