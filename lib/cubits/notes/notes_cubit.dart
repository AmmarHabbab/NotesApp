import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    // emit(NotesLoading());
    // try {
    var notesBox = Hive.box<NoteModel>(kNotesBox); // generic
    notes = notesBox.values.toList();

    //   emit(NotesSuccess(notes: notes));
    // } catch (e) {
    //   emit(NotesFailure(errMessage: e.toString()));
    // }
  }
}
