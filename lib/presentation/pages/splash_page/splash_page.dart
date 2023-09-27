import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height / 2,
              width: size.width - size.width / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: isDarkMode ? kLogoLight : kLogoDark,
                ),
              ),
            ),
            const Text('Authenticating...'),
            kHeightMedium,
            SizedBox(
              width: size.width / 2,
              child: LinearProgressIndicator(
                backgroundColor:
                    isDarkMode ? kSecondaryDarkColor : kSecondaryLightColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
