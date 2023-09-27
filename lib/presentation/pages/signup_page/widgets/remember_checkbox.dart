import 'package:flutter/material.dart';
import 'package:notable/presentation/core/constants.dart';

class RememberCheckbox extends StatelessWidget {
  const RememberCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        const Text("Remember me"),
        const Spacer(),
        Checkbox(
          value: false,
          activeColor: Theme.of(context).primaryColor,
          onChanged: (_) {},
        ),
      ],
    );
  }
}
