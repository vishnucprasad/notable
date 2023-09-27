import 'package:flutter/material.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    required this.hintText,
    required this.onChanged,
    required this.validator,
    this.initialValue,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.autoValidateMode,
    this.filled,
    this.maxLines,
    super.key,
  });

  final String hintText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String? initialValue;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final AutovalidateMode? autoValidateMode;
  final bool? filled;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return TextFormField(
      initialValue: initialValue,
      cursorColor: isDarkMode ? kLightColor : kDarkColor,
      obscureText: obscureText ?? false,
      maxLines: maxLines,
      autovalidateMode: autoValidateMode,
      decoration: InputDecoration(
        filled: filled,
        border: kTextFormFieldBorder,
        focusedBorder: kTextFormFieldBorder,
        enabledBorder: kTextFormFieldBorder,
        errorBorder: kTextFormFieldBorder,
        errorMaxLines: 3,
        fillColor: isDarkMode
            ? kDarkGreyColor.withOpacity(0.15)
            : kLightGreyColor.withOpacity(0.1),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kLightGreyColor,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      style: TextStyle(
        color: isDarkMode ? kLightColor : kDarkColor,
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
