import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/home_view/data/models/note_model.dart';
import 'package:note_app/views/home_view/presentation/manager/notes_cubit/notes_cubit.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes=  BlocProvider.of<NotesCubit>(context).notes;
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteItem(noteItem: notes[index],);
          },
        );
      },
    );
  }
}
