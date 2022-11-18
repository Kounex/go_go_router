import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

import '../../../../app.dart';

class ExampleWrapper extends StatefulWidget {
  final Widget child;

  const ExampleWrapper({
    super.key,
    required this.child,
  });

  @override
  State<ExampleWrapper> createState() => _ExampleWrapperState();
}

class _ExampleWrapperState extends State<ExampleWrapper> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          this.widget.child,
          Positioned(
            bottom: 24.0,
            right: 24.0,
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () => runApp(
                    App(),
                  ),
                  child: Icon(
                    CupertinoIcons.arrowshape_turn_up_left_2_fill,
                  ),
                ),
                SizedBox(width: 12.0),
                FloatingActionButton(
                  onPressed: () {
                    if (timeDilation == 1.0) {
                      timeDilation = 50.0;
                    } else {
                      timeDilation = 1.0;
                    }
                    setState(() {});
                  },
                  child: Icon(
                    timeDilation == 1.0
                        ? CupertinoIcons.slowmo
                        : CupertinoIcons.capslock_fill,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
