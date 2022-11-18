import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final Widget? child;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  /// Will be placed inside a [Stack] widget to place
  /// stuff above the card so making use of [Positioned]
  /// is recommended
  final List<Widget>? decorations;

  const BaseCard({
    super.key,
    this.child,
    this.margin = const EdgeInsets.all(24.0),
    this.padding = const EdgeInsets.all(24.0),
    this.decorations,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 750,
      child: Card(
        margin: this.margin,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ClipRect(
          child: Stack(
            children: [
              Padding(
                padding: this.padding,
                child: this.child,
              ),
              ...(this.decorations ?? []),
            ],
          ),
        ),
      ),
    );
  }
}
