import 'package:flutter/material.dart';

class ExerciseTimeSlide extends StatelessWidget {
  final String? text;
  final Widget? bottom;

  const ExerciseTimeSlide({super.key, this.text, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 112.0),
          Text(
            'Exercise Time!',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 12.0),
          Divider(height: 1),
          if (this.text != null) ...[
            SizedBox(height: 12.0),
            Text(
              this.text!,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
          if (this.bottom != null) ...[
            SizedBox(height: 12.0),
            this.bottom!,
          ],
        ],
      ),
    );
  }
}
