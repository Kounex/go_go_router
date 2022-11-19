import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../views/examples/examples.dart';
import '../../views/slides/slides.dart';
import '../../views/start/start.dart';

class RouterUtils {
  static final router = GoRouter(
    routes: [
      ShellRoute(
        pageBuilder: (context, state, child) => _webTransition(
          context,
          state,
          Stack(
            children: [
              child,
              if (state.subloc.length > 1)
                Positioned(
                  top: 24.0,
                  left: 24.0,
                  child: FloatingActionButton(
                    onPressed: () => navigateTo(
                      context,
                      StartRoute(),
                    ),
                    child: Icon(
                      Icons.home,
                    ),
                  ),
                ),
            ],
          ),
        ),
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => _webTransition(
              context,
              state,
              Title(
                color: Colors.black,
                title: 'Home',
                child: StartView(),
              ),
            ),
          ),
          GoRoute(
            path: '/slides',
            pageBuilder: (context, state) => _webTransition(
              context,
              state,
              Title(
                color: Colors.black,
                title: 'Slides',
                child: SlidesView(
                  id: int.tryParse(state.queryParams['id'] ?? '') ?? 1,
                ),
              ),
            ),
          ),
          GoRoute(
            path: '/examples',
            pageBuilder: (context, state) => _webTransition(
              context,
              state,
              Title(
                color: Colors.black,
                title: 'Examples',
                child: ExamplesView(),
              ),
            ),
          ),
        ],
      ),
    ],
  );

  static void navigateTo(BuildContext context, BaseRoute route) {
    context.go(route.path);
  }
}

abstract class BaseRoute {
  String path;

  BaseRoute(this.path);
}

class StartRoute extends BaseRoute {
  StartRoute() : super('/');
}

class SlidesRoute extends BaseRoute {
  SlidesRoute({int? id}) : super('/slides?id=${id ?? 1}');
}

class ExamplesRoute extends BaseRoute {
  ExamplesRoute() : super('/examples');
}

final _webTransition = (BuildContext context, GoRouterState state,
        Widget view) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: view,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Change the opacity of the screen using a Curve based on the the animation's
        // value
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
