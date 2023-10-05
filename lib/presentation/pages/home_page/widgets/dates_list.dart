import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/notes/notes_bloc.dart';
import 'package:notable/presentation/pages/home_page/widgets/date_button.dart';

class DatesList extends StatelessWidget {
  const DatesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesBloc, NotesState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          height: 80,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              7,
              (index) => DateButton(
                date: state.dateList[index],
                isSelected: state.selectedDateIndex == index,
                onPressed: () => context
                    .read<NotesBloc>()
                    .add(NotesEvent.changeSelectedDateIndex(index)),
              ),
            ),
          ),
        );
      },
    );
  }
}
