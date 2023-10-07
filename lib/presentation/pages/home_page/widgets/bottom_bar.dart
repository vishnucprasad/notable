import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notable/application/notes/notes_bloc.dart';
import 'package:notable/presentation/core/colors.dart';
import 'package:notable/presentation/router/app_router.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final dateList = context.read<NotesBloc>().state.dateList;
    final startDate = dateList[0];
    final endDate = dateList[6];
    final dateRage =
        '${DateFormat.MMMd().format(startDate)} - ${DateFormat.MMMd().format(endDate)}';

    return BottomAppBar(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
            ),
            Text(
              dateRage.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
            ),
            const Spacer(),
            SizedBox(
              height: 60,
              width: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Theme.of(context).primaryColor,
                  ),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
                onPressed: () => context.pushRoute(const CreateNoteRoute()),
                child: Icon(
                  Icons.add,
                  size: 24,
                  color: isDarkMode ? kDarkColor : kLightColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
