import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:notable/application/auth/signin/signin_bloc.dart';
import 'package:notable/presentation/core/widgets/text_input_field.dart';

class PasswordInputField extends HookWidget {
  const PasswordInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<SigninBloc, SigninState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.credentials.password.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return TextInputField(
          controller: controller,
          hintText: 'Password',
          prefixIcon: const Icon(Icons.password),
          suffixIcon: IconButton(
            onPressed: () => context
                .read<SigninBloc>()
                .add(const SigninEvent.obscureTextChanged()),
            icon: Icon(
              state.hidePassword
                  ? CupertinoIcons.eye
                  : CupertinoIcons.eye_slash,
            ),
          ),
          obscureText: state.hidePassword,
          filled: true,
          autoValidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          onChanged: (value) => context
              .read<SigninBloc>()
              .add(SigninEvent.passwordChanged(value)),
          validator: (_) =>
              context.read<SigninBloc>().state.credentials.password.value.fold(
                    (l) => l.maybeMap(
                      empty: (_) => "Password can't be empty",
                      invalid: (_) =>
                          "Password must be minimum six characters, at least one uppercase letter, one lowercase letter, one number and one special character",
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
        );
      },
    );
  }
}
