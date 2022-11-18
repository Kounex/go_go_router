import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_go_router/shared/utils/router.dart';

import '../../shared/widgets/base/web_scaffold.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: pi / 1.25,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Go, Go, Router!',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 96.0,
                    child: ElevatedButton(
                      onPressed: () => RouterUtils.navigateTo(
                        context,
                        SlidesRoute(),
                      ),
                      child: Text('Slides'),
                    ),
                  ),
                  SizedBox(width: 24.0),
                  SizedBox(
                    width: 96.0,
                    child: ElevatedButton(
                      onPressed: () => RouterUtils.navigateTo(
                        context,
                        ExamplesRoute(),
                      ),
                      child: Text('Examples'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
