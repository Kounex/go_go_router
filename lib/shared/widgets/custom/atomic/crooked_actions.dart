import 'package:flutter/material.dart';

import '../../../../shared/types/extensions/iterable.dart';

class CrookedAction {
  final String text;
  final VoidCallback onPressed;

  CrookedAction({
    required this.text,
    required this.onPressed,
  });
}

class CrookedActions extends StatelessWidget {
  final List<CrookedAction> actions;

  final double spacing;
  final double crookyness;

  const CrookedActions({
    super.key,
    required this.actions,
    this.spacing = 24.0,
    this.crookyness = 48.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: this
          .actions
          .mapIndexed(
            (action, index) => Padding(
              padding: EdgeInsets.only(
                top: index > 0 ? this.spacing : 0,
                left: this.crookyness * index,
              ),
              child: SizedBox(
                width: 200.0,
                child: ElevatedButton(
                  onPressed: action.onPressed,
                  child: Text(action.text),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
