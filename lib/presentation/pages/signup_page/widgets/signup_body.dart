import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';
import 'package:notable/presentation/pages/signup_page/widgets/email_input_field.dart';
import 'package:notable/presentation/pages/signup_page/widgets/name_input_field.dart';
import 'package:notable/presentation/pages/signup_page/widgets/password_input_field.dart';
import 'package:notable/presentation/pages/signup_page/widgets/remember_checkbox.dart';
import 'package:notable/presentation/pages/signup_page/widgets/signup_button.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

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
              height: size.height / 2.75,
              width: size.width - size.width / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: isDarkMode ? kLogoLight : kLogoDark,
                ),
              ),
            ),
            Container(
              height: size.height - size.height / 2.75,
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
                    'Signup',
                    style: headLineText?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  kHeightLarge,
                  const NameInputField(),
                  kHeightMedium,
                  const EmailInputField(),
                  kHeightMedium,
                  const PasswordInputField(),
                  kHeightMedium,
                  const RememberCheckbox(),
                  kHeightMedium,
                  const SignupButton(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account ?"),
                      TextButton(
                        onPressed: () => context.popRoute(),
                        child: Text(
                          'Signin',
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
