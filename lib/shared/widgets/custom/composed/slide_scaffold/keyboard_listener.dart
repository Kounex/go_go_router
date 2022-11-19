import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_go_router/shared/widgets/custom/composed/slide_scaffold/service.dart';

class SlideKeyboardListener extends StatelessWidget {
  final PageController controller;
  final int id;
  final int amountSlides;
  final Widget child;

  const SlideKeyboardListener({
    super.key,
    required this.controller,
    required this.id,
    required this.amountSlides,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: FocusNode(),
      onKeyEvent: (event) {
        if (event is KeyRepeatEvent || event is KeyDownEvent) {
          if (event.logicalKey.keyLabel == 'Arrow Left' ||
              event.logicalKey.keyLabel == 'Page Up') {
            SlideService.animateToSlide(
              context,
              this.controller,
              this.id,
              this.amountSlides,
              to: SlideTo.prev,
            )?.call();
          } else if (event.logicalKey.keyLabel == 'Arrow Right' ||
              event.logicalKey.keyLabel == 'Page Down') {
            SlideService.animateToSlide(
              context,
              this.controller,
              this.id,
              this.amountSlides,
              to: SlideTo.next,
            )?.call();
          }
        }
      },
      child: this.child,
    );
  }
}
