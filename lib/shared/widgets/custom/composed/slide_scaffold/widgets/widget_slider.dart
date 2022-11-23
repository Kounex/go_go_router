import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  late Animation<double> _size;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _size = Tween<double>(begin: 0, end: 1.0).animate(
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
        builder: (context, child) => SizeTransition(
          sizeFactor: _size,
          axisAlignment: this.widget.direction == ArrowDirection.down ||
                  this.widget.direction == ArrowDirection.right
              ? 1.0
              : -1.0,
          axis: this.widget.direction == ArrowDirection.down ||
                  this.widget.direction == ArrowDirection.up
              ? Axis.vertical
              : Axis.horizontal,
          child: this.widget.child,
        ),
      ),
      Card(
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
    ];

    if (this.widget.direction == ArrowDirection.up ||
        this.widget.direction == ArrowDirection.left) {
      children = children.reversed.toList();
    }

    return Flex(
      direction: this.widget.direction == ArrowDirection.up ||
              this.widget.direction == ArrowDirection.down
          ? Axis.vertical
          : Axis.horizontal,
      children: children,
    );
  }
}
