import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notable/presentation/pages/signin_page/widgets/signin_body.dart';

@RoutePage()
class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SigninBody();
  }
}
