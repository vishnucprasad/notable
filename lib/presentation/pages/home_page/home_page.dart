import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notable/presentation/core/widgets/notable_app_bar.dart';
import 'package:notable/presentation/pages/home_page/widgets/create_note_button.dart';
import 'package:notable/presentation/pages/home_page/widgets/notes_gird.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            NotableAppBar(),
            NotesGird(),
          ],
        ),
      ),
      floatingActionButton: CreateNoteButton(),
    );
  }
}
