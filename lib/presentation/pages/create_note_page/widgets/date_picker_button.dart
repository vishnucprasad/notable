import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notable/application/notes/note_form/note_form_bloc.dart';
import 'package:notable/presentation/core/colors.dart';

class DatePickerButton extends StatelessWidget {
  const DatePickerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<NoteFormBloc, NoteFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ElevatedButton.icon(
            icon: const Icon(Icons.calendar_month),
            style: ButtonStyle(
              elevation: const MaterialStatePropertyAll<double>(0),
              padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 4),
              ),
              foregroundColor: MaterialStatePropertyAll<Color>(
                Theme.of(context).primaryColor,
              ),
              backgroundColor: MaterialStatePropertyAll<Color>(
                isDarkMode ? kSecondaryDarkColor : kSecondaryLightColor,
              ),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            label: Text(
              DateFormat.yMMMMEEEEd().format(
                state.note.date,
              ),
            ),
            onPressed: () async {
              final selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          foregroundColor: isDarkMode
                              ? kLightColor
                              : kDarkColor, // button text color
                        ),
                      ),
                      dialogBackgroundColor: isDarkMode
                          ? kSecondaryDarkColor
                          : kSecondaryLightColor,
                    ),
                    child: child!,
                  );
                },
              );

              if (selectedDate != null) {
                // ignore: use_build_context_synchronously
                context
                    .read<NoteFormBloc>()
                    .add(NoteFormEvent.dateChanged(selectedDate));
              }
            },
          ),
        );
      },
    );
  }
}
