import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

import 'custom_note_item.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child:
                  NotesListView()), // to use expanded u must use with widgets that are flex like column and row but u cant use it in stack for example cuz its not flex and be aware that sometimes this may not throw and exception on screen
        ],
      ),
    );
  }
}
