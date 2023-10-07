import 'package:flutter/material.dart';

class TitleInputField extends StatelessWidget {
  const TitleInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 25,
        maxHeight: 80,
      ),
      child: TextFormField(
        autofocus: true,
        keyboardType: TextInputType.multiline,
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(top: 2.0, left: 13.0, right: 13.0, bottom: 2.0),
          hintText: "Add title",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
