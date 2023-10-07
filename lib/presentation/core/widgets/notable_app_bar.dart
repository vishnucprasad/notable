import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/auth/auth_bloc.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';

class NotableAppBar extends StatelessWidget {
  const NotableAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        Theme.of(context).colorScheme.brightness == Brightness.dark;

    return Row(
      children: [
        kWidth,
        Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: isDarkMode ? kLogoLight : kLogoDark,
            ),
          ),
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor:
              isDarkMode ? kSecondaryDarkColor : kSecondaryLightColor,
          child: IconButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
            },
            icon: const Icon(Icons.logout),
          ),
        ),
        kWidth,
      ],
    );
  }
}
