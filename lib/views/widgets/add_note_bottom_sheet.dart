import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../cubits/add_note/add_note_cubit.dart';
import 'add_note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AddNoteCubit(), // use cubit only on the screen that need it so u dont consume memory without need
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('Failed! ${state.errMessage}');
          }

          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                  // also the above padding messes with the modal progress Hud so we put it under
                  child: AddNoteForm()),
            ),
          ); // ModalProgressHUD takes certain shape on the screen and it doesnt work that it be inside a single child scroll view so the single child scroll view should be inside the modalprogesshud
        },
      ),
    );
  }
}
// the modal progress hud increase the height when true solution is either sized box with a fixed size or use something else on the button for an example considering the loading is related to the button only
