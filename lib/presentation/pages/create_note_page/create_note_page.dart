import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/core/constants.dart';
import 'package:notable/presentation/core/extensions/dialog_extension.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/date_picker_button.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/note_input_field.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/title_input_field.dart';

@RoutePage()
class CreateNotePage extends StatelessWidget {
  const CreateNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return WillPopScope(
      onWillPop: () async {
        final value = await context.showConfirmationDialog(
          title: 'Are you sure you want to exit without saving ?',
          icon: Icons.warning,
        );

        return value == true;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Create note'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save),
            ),
          ],
          backgroundColor: isDarkMode ? kDarkColor : kLightColor,
          foregroundColor: isDarkMode ? kLightColor : kDarkColor,
        ),
        body: const SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeightMedium,
              TitleInputField(),
              kHeightMedium,
              DatePickerButton(),
              kHeightMedium,
              Expanded(child: NoteInputField()),
            ],
          ),
        ),
      ),
    );
  }
}
