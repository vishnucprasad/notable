import 'package:flutter/material.dart';
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
}
