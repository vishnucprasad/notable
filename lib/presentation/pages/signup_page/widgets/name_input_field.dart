import 'package:flutter/material.dart';
import 'package:notable/presentation/core/widgets/text_input_field.dart';

class NameInputField extends StatelessWidget {
  const NameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      hintText: 'Name',
      prefixIcon: const Icon(Icons.person),
      filled: true,
      onChanged: (value) {},
      validator: (value) => null,
    );
  }
}
