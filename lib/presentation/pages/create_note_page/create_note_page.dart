import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/notes/note_form/note_form_bloc.dart';
import 'package:notable/injection.dart';
import 'package:notable/presentation/pages/create_note_page/widgets/create_note_listener.dart';

@RoutePage()
class CreateNotePage extends StatelessWidget {
  const CreateNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>(),
      child: const CreateNoteListener(),
    );
  }
}
