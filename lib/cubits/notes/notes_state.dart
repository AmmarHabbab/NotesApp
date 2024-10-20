import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

// final class AddNoteLoading extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

final class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure({required this.errMessage});
}
