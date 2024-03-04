import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/constant/colors.dart';
import 'package:note_app/views/home_view/presentation/manager/notes_cubit/notes_cubit.dart';

import '../widgets/add_note_bottom_sheet.dart';
import 'notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchNotes(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) => const AddNoteBottomSheet(),
            );
          },
          child: const Icon(Icons.add, color: kSecondaryColor,),
        ),
      ),
    );
  }
}
