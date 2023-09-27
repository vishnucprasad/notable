import 'package:flutter/material.dart';
import 'package:notable/presentation/core/widgets/text_input_field.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      hintText: 'Email',
      prefixIcon: const Icon(Icons.email),
      filled: true,
      onChanged: (value) {},
      validator: (value) => null,
    );
  }
}
