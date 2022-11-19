import 'package:flutter/material.dart';

import '../../../shared/utils/theme.dart';
import 'home/home.dart';

class ImpererativeAdvancedApp extends StatelessWidget {
  const ImpererativeAdvancedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeUtils.base,
      home: HomeView(),
    );
  }
}
