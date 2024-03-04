import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/home_view/data/models/note_model.dart';
import 'package:note_app/views/home_view/presentation/manager/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/home_view/presentation/widgets/app_bar.dart';
import 'package:note_app/views/home_view/presentation/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 12),
            CustomTextField(
              hintText: 'Title',
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(height: 24),
            CustomTextField(
                hintText: 'Content',
                maxLines: 5,
                onChanged: (value) {
                  content = value;
                }),
          ],
        ),
      ),
    );
  }
}
