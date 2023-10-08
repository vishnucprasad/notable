import 'package:flutter/material.dart';
import 'package:notable/presentation/core/widgets/color_picker_dialog.dart';
import 'package:notable/presentation/core/widgets/confirmation_dialog.dart';

extension ShowDialogExtension on BuildContext {
  Future<bool?> showConfirmationDialog({
    required String title,
    required IconData icon,
  }) async {
    return showDialog<bool>(
      context: this,
      builder: (context) => ConfirmationDialog(
        title: title,
        icon: icon,
      ),
    );
  }

  void showColorpickerDialog({
    required void Function(Color) onColorChanged,
    required String pickerColor,
  }) {
    showDialog(
      context: this,
      builder: (context) => ColorPickerDialog(
        pickerColor: Color(
          int.parse(pickerColor.substring(1, 7), radix: 16) + 0xFF000000,
        ),
        onColorChanged: onColorChanged,
      ),
    );
  }
}
