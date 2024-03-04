import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view/presentation/view/edit_note_view_body.dart';
import 'package:note_app/views/home_view/data/models/note_model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  EditNoteViewBody(note: note),
    );
  }
}
