import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

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
        title: Row(
          children: [
            Icon(icon),
            kWidthMedium,
            Text(
              'Alert!',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(title),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => context.popRoute(false),
                  child: const Text('Cancel'),
                ),
                kWidthMedium,
                ElevatedButton(
                  onPressed: () => context.popRoute(true),
                  child: const Text('OK'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
