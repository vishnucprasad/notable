import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notable/presentation/router/app_router.dart';

class CreateNoteButton extends StatelessWidget {
  const CreateNoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: () => context.pushRoute(const CreateNoteRoute()),
      child: const Icon(Icons.add),
    );
  }
}
