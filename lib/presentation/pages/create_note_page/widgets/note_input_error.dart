import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/notes/note_form/note_form_bloc.dart';

class NoteInputError extends StatelessWidget {
  const NoteInputError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      builder: (context, state) {
        return state.showValidationError
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                child: RichText(
                  text: TextSpan(
                    text: state.note.document.value.fold(
                      (l) => l.maybeMap(
                        empty: (_) => "Note can't be empty",
                        exceedingLength: (f) =>
                            "Note can't exceed ${f.maxLength} charecters",
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.red,
                        ),
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
