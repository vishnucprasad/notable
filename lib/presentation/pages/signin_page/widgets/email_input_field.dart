import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/auth/signin/signin_bloc.dart';
import 'package:notable/presentation/core/widgets/text_input_field.dart';

class EmailInputField extends HookWidget {
  const EmailInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<SigninBloc, SigninState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text =
            state.credentials.emailAddress.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return TextInputField(
          controller: controller,
          hintText: 'Email',
          prefixIcon: const Icon(Icons.email),
          filled: true,
          autoValidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          onChanged: (value) =>
              context.read<SigninBloc>().add(SigninEvent.emailChanged(value)),
          validator: (_) => context
              .read<SigninBloc>()
              .state
              .credentials
              .emailAddress
              .value
              .fold(
                (l) => l.maybeMap(
                  empty: (_) => "Email address can't be empty",
                  invalid: (_) => "Invalid email address",
                  orElse: () => null,
                ),
                (r) => null,
              ),
        );
      },
    );
  }
}
