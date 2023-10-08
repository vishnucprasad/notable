import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:notable/presentation/core/colors.dart';

class ColorPickerDialog extends StatelessWidget {
  const ColorPickerDialog({
    super.key,
    required this.onColorChanged,
    required this.pickerColor,
  });

  final void Function(Color) onColorChanged;
  final Color pickerColor;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      child: AlertDialog(
        backgroundColor:
            isDarkMode ? kSecondaryDarkColor : kSecondaryLightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: kDarkGreyColor.withOpacity(0.5),
            width: 0.5,
          ),
        ),
        insetPadding: const EdgeInsets.all(16),
        title: Text(
          'Pick a color',
          style: textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: pickerColor,
              onColorChanged: onColorChanged,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            child: ElevatedButton(
              onPressed: () {
                context.router.pop();
              },
              child: const Text('Done'),
            ),
          )
        ],
      ),
    );
  }
}
