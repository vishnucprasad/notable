import 'package:flutter/material.dart';
import 'package:notable/presentation/core/colors.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).primaryColor,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            isDarkMode ? kDarkColor : kLightColor,
          ),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Signin',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
