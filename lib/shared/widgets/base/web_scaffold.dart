import 'package:flutter/material.dart';

class WebScaffold extends StatelessWidget {
  final Widget? drawer;
  final Widget? body;

  final Color? backgroundColor;

  const WebScaffold({
    super.key,
    this.drawer,
    this.body,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: this.backgroundColor,
        drawer: this.drawer,
        body: this.body,
      ),
    );
  }
}
