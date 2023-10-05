import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notable/presentation/core/colors.dart';

class DateButton extends StatelessWidget {
  const DateButton({
    super.key,
    required this.date,
    required this.isSelected,
    required this.onPressed,
  });

  final DateTime date;
  final bool isSelected;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final titleText = Theme.of(context).textTheme.headlineMedium;
    final labelText = Theme.of(context).textTheme.labelMedium;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    const materialTransparentColor = MaterialStatePropertyAll<Color>(
      Colors.transparent,
    );

    return SizedBox(
      height: 80,
      width: size.width / 9,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          backgroundColor: MaterialStatePropertyAll<Color>(isSelected
              ? isDarkMode
                  ? kPrimaryDarkColor
                  : kPrimaryLightColor
              : Colors.transparent),
          shadowColor: materialTransparentColor,
          overlayColor: materialTransparentColor,
          foregroundColor: materialTransparentColor,
          surfaceTintColor: materialTransparentColor,
          padding: const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  width: 0.5,
                  color: isDarkMode ? kPrimaryDarkColor : kPrimaryLightColor,
                )),
          ),
        ),
        child: Column(
          children: [
            const Spacer(flex: 4),
            Text(
              DateFormat.E().format(date),
              style: labelText?.copyWith(
                color: isSelected
                    ? isDarkMode
                        ? kPrimaryLightColor
                        : kPrimaryDarkColor
                    : labelText.color,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              '${date.day}',
              style: titleText?.copyWith(
                color: isSelected
                    ? isDarkMode
                        ? kPrimaryLightColor
                        : kPrimaryDarkColor
                    : titleText.color,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              DateFormat.MMM().format(date),
              style: labelText?.copyWith(
                color: isSelected
                    ? isDarkMode
                        ? kPrimaryLightColor
                        : kPrimaryDarkColor
                    : labelText.color,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
