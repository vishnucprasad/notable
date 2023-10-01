import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/auth/signin/signin_bloc.dart';
import 'package:notable/injection.dart';
import 'package:notable/presentation/pages/signin_page/widgets/signin_listener.dart';

@RoutePage()
class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SigninBloc>(),
      child: const SigninListener(),
    );
  }
}
