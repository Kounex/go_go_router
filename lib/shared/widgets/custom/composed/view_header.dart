import 'package:flutter/material.dart';

import '../atomic/icon_box.dart';

class ViewHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ViewHeader({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconBox(
          icon: this.icon,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              this.title,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              this.subtitle,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ],
    );
  }
}
