import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Current implementation is hacky - I don't like it. If I have the time,
/// I definetily need to refactor it to be aware of sizes etc. Currently
/// kinda hardcoded the slide translation fractions

enum ArrowDirection {
  down,
  up,
  left,
  right;
}

class WidgetSlider extends StatefulWidget {
  final Widget child;
  final ArrowDirection direction;

  const WidgetSlider({
    super.key,
    required this.child,
    this.direction = ArrowDirection.down,
  });

  @override
  State<WidgetSlider> createState() => _WidgetSliderState();
}

class _WidgetSliderState extends State<WidgetSlider>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<Offset> _childPosition;
  late Animation<Offset> _controlPosition;

  @override
  void initState() {
    super.initState();

    double initialXChild;
    double initialYChild;
    double initialXControl;
    double initialYControl;

    switch (this.widget.direction) {
      case ArrowDirection.down:
        initialXChild = 0;
        initialYChild = -1;
        initialXControl = 0;
        initialYControl = -1.75;
        break;
      case ArrowDirection.up:
        initialXChild = 0;
        initialYChild = 1;
        initialXControl = 0;
        initialYControl = 1.75;
        break;
      case ArrowDirection.left:
        initialXChild = -1;
        initialYChild = 0;
        initialXControl = -1.75;
        initialYControl = 0;
        break;
      case ArrowDirection.right:
        initialXChild = 1;
        initialYChild = 0;
        initialXControl = 1.75;
        initialYControl = 0;
        break;
    }

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _childPosition = Tween<Offset>(
            begin: Offset(initialXChild, initialYChild), end: Offset(0, 0))
        .animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    _controlPosition = Tween<Offset>(
            begin: Offset(initialXControl, initialYControl), end: Offset(0, 0))
        .animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => SlideTransition(
          position: _childPosition,
          child: child,
        ),
        child: this.widget.child,
      ),
      AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => SlideTransition(
          position: _controlPosition,
          child: child,
        ),
        child: Card(
          margin: const EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              if (!_controller.isAnimating) {
                if (!_controller.isCompleted) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
              }
            },
            visualDensity: VisualDensity.compact,
            constraints: BoxConstraints(
              minHeight: 32.0,
              maxHeight: 32.0,
              minWidth: 32.0,
              maxWidth: 32.0,
            ),
            icon: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) => RotationTransition(
                turns: _controller.drive(
                  Tween<double>(
                    begin: 0,
                    end: 0.5,
                  ),
                ),
                child: child,
              ),
              child: Icon(
                () {
                  switch (this.widget.direction) {
                    case ArrowDirection.down:
                      return CupertinoIcons.chevron_down;
                    case ArrowDirection.up:
                      return CupertinoIcons.chevron_up;
                    case ArrowDirection.left:
                      return CupertinoIcons.chevron_left;
                    case ArrowDirection.right:
                      return CupertinoIcons.chevron_right;
                  }
                }(),
                size: 16.0,
              ),
            ),
          ),
        ),
      ),
    ];

    if (this.widget.direction == ArrowDirection.up ||
        this.widget.direction == ArrowDirection.left) {
      children = children.reversed.toList();
    }

    return this.widget.direction == ArrowDirection.up ||
            this.widget.direction == ArrowDirection.down
        ? Column(
            children: children,
          )
        : Row(
            children: children,
          );
  }
}
