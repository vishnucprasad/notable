import 'package:flutter/material.dart';
import 'package:notable/domain/core/extensions.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/extensions/dialog_extension.dart';

class ColorPickerButton extends StatelessWidget {
  const ColorPickerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.square,
          color: Color(
            int.parse(
                  kLightColor.toHex().substring(1, 7),
                  radix: 16,
                ) +
                0xFF000000,
          ),
        ),
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          padding: const MaterialStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 4),
          ),
          foregroundColor: MaterialStatePropertyAll<Color>(
            Theme.of(context).primaryColor,
          ),
          backgroundColor: MaterialStatePropertyAll<Color>(
            isDarkMode ? kSecondaryDarkColor : kSecondaryLightColor,
          ),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        label: Text(
          kLightColor.toHex(),
        ),
        onPressed: () => context.showColorpickerDialog(
          pickerColor: kLightColor.toHex(),
          onColorChanged: (color) {},
        ),
      ),
    );
  }
}
