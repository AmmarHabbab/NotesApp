import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';

import 'cubits/notes/notes_cubit.dart';
import 'models/note_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter()); // this always above the one under
  await Hive.openBox<NoteModel>(
      kNotesBox); // always specify the box data type or an exception will happen
  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //theme: ThemeData.dark(),
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'
            // scaffoldBackgroundColor:
            ),
        home: const NotesView(),
      ),
    );
  }
}
