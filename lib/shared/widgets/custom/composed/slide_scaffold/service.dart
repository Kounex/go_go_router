import 'package:flutter/material.dart';
import 'package:go_go_router/shared/utils/router.dart';

final Duration kSlideTransitionDuration = const Duration(milliseconds: 300);
final Curve kSlideTransitionCurve = Curves.easeOutCubic;

enum SlideTo {
  prev,
  next,
  start,
  end,
}

class SlideService {
  static bool _canAnimatoToSlide(
    PageController controller,
    int id,
    int amountSlides, {
    SlideTo? to,
    int? toSlide,
  }) {
    switch (to) {
      case SlideTo.prev:
      case SlideTo.start:
        return (controller.page ?? (id - 1)).round() > 0;
      case SlideTo.next:
      case SlideTo.end:
        return (controller.page ?? (id - 1)).round() < amountSlides - 1;
      default:
        return toSlide != null && toSlide > 0 && toSlide <= amountSlides;
    }
  }

  static VoidCallback? animateToSlide(
    BuildContext context,
    PageController controller,
    int id,
    int amountSlides, {
    SlideTo? to,
    int? toSlide,
  }) {
    if (_canAnimatoToSlide(controller, id, amountSlides,
        to: to, toSlide: toSlide)) {
      switch (to) {
        case SlideTo.prev:
          toSlide = ((controller.page ?? (id - 1)) - 1).toInt();
          break;
        case SlideTo.start:
          toSlide = 0;
          break;
        case SlideTo.next:
          toSlide = ((controller.page ?? (id - 1)) + 1).toInt();
          break;
        case SlideTo.end:
          toSlide = amountSlides - 1;
          break;
        default:
          toSlide = (toSlide ?? 1) - 1;
          break;
      }

      return () {
        controller
            .animateToPage(
              toSlide!,
              duration: kSlideTransitionDuration,
              curve: kSlideTransitionCurve,
            )
            .then(
              (_) => RouterUtils.navigateTo(
                context,
                SlidesRoute(id: toSlide! + 1),
              ),
            );
      };
    }
    return null;
  }
}
