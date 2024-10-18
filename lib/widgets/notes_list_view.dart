import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [Colors.accents, Colors.red, Colors.orange];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(),
      );
    });
  }
}
