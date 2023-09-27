import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';
import 'package:notable/presentation/pages/signin_page/widgets/email_input_field.dart';
import 'package:notable/presentation/pages/signin_page/widgets/password_input_field.dart';
import 'package:notable/presentation/pages/signin_page/widgets/remember_checkbox.dart';
import 'package:notable/presentation/pages/signin_page/widgets/signin_button.dart';
import 'package:notable/presentation/router/app_router.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    final TextStyle? headLineText = Theme.of(context).textTheme.headlineMedium;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 2.25,
              width: size.width - size.width / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: isDarkMode ? kLogoLight : kLogoDark,
                ),
              ),
            ),
            Container(
              height: size.height - size.height / 2.25,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: isDarkMode ? kSecondaryDarkColor : kSecondaryLightColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Signin',
                    style: headLineText?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  kHeightLarge,
                  const EmailInputField(),
                  kHeightMedium,
                  const PasswordInputField(),
                  kHeightMedium,
                  const RememberCheckbox(),
                  kHeightMedium,
                  const SigninButton(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account ?"),
                      TextButton(
                        onPressed: () => context.pushRoute(const SignupRoute()),
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
