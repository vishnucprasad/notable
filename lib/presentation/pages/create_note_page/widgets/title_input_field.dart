import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:notable/application/notes/note_form/note_form_bloc.dart';

class TitleInputField extends HookWidget {
  const TitleInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.note.title.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 25,
            maxHeight: 100,
          ),
          child: TextFormField(
            controller: controller,
            autofocus: true,
            autovalidateMode: state.showValidationError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                  top: 2.0, left: 13.0, right: 13.0, bottom: 2.0),
              hintText: "Add title",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
            onChanged: (value) => context
                .read<NoteFormBloc>()
                .add(NoteFormEvent.titleChanged(value)),
            validator: (value) =>
                context.read<NoteFormBloc>().state.note.title.value.fold(
                      (l) => l.maybeMap(
                        empty: (_) => "Note title can't be empty",
                        exceedingLength: (f) =>
                            "Note title can't exceed ${f.maxLength} characters",
                        multiLine: (_) =>
                            "Note title should be a single line without line breaks",
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
          ),
        );
      },
    );
  }
}
