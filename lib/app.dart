import 'package:flutter/material.dart';
import 'package:go_go_router/shared/utils/router.dart';

import 'shared/utils/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterUtils.router,
      theme: ThemeUtils.base,
    );
  }
}
