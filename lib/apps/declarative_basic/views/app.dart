import 'package:flutter/material.dart';

import '../../../shared/utils/theme.dart';
import 'home/home.dart';

class DeclarativeBasicApp extends StatelessWidget {
  const DeclarativeBasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeUtils.base,
      home: HomeView(),
    );
  }
}
