import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notable/presentation/core/widgets/text_input_field.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInputField(
      hintText: 'Password',
      prefixIcon: const Icon(Icons.password),
      suffixIcon: IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.eye,
        ),
      ),
      filled: true,
      onChanged: (value) {},
      validator: (value) => null,
    );
  }
}
