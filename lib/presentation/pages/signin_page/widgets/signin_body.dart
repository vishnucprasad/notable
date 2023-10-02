import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/auth/signin/signin_bloc.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';
import 'package:notable/presentation/pages/signin_page/widgets/email_input_field.dart';
import 'package:notable/presentation/pages/signin_page/widgets/password_input_field.dart';
import 'package:notable/presentation/pages/signin_page/widgets/signin_button.dart';
import 'package:notable/presentation/pages/signin_page/widgets/signin_with_google_button.dart';
import 'package:notable/presentation/pages/signin_page/widgets/signup_button.dart';

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
              child: BlocBuilder<SigninBloc, SigninState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Text(
                        state.isSubmitting ? 'Signing in' : 'Signin',
                        style: headLineText?.copyWith(
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      kHeightLarge,
                      if (state.isSubmitting)
                        Column(
                          children: [
                            SizedBox(
                              width: size.width / 1.25,
                              child: LinearProgressIndicator(
                                backgroundColor: isDarkMode
                                    ? kSecondaryDarkColor
                                    : kSecondaryLightColor,
                              ),
                            ),
                            kHeightLarge,
                          ],
                        ),
                      const EmailInputField(),
                      kHeightMedium,
                      const PasswordInputField(),
                      kHeightMedium,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: SigninButton()),
                          kWidthMedium,
                          Expanded(child: SignupButton()),
                        ],
                      ),
                      kHeightMedium,
                      const SigninWithGoogleButton()
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
