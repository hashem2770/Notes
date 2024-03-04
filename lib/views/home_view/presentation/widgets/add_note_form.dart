import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../data/models/note_model.dart';
import '../manager/add_note_cubit/add_note_cubit.dart';
import '../manager/notes_cubit/notes_cubit.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autoValidateMode,
      child: Column(
        children: [
          CustomTextField(
            controller: titleController,
            validationText: 'Please provide a title',
            onSaved: (value) {
              if (value != null) {
                titleController.text = value;
              }
            },
            hintText: 'Title',
            maxLines: 1,
          ),
          const SizedBox(height: 24),
          CustomTextField(
            controller: contentController,
            validationText: 'Please provide a content',
            onSaved: (value) {
              if (value != null) {
                contentController.text = value;
              }
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 48),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              final DateFormat formatter = DateFormat('y-MM-dd');
              final String formatted = formatter.format(DateTime.now());

              return CustomButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    var note = NoteModel(
                      title: titleController.text,
                      content: contentController.text,
                      dateTime: formatted,
                      color: Colors.amberAccent.value,
                    );
                    context.read<AddNoteCubit>().addNote(note);
                  } else {
                    setState(() {
                      _autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
                isLoading: state is AddNoteLoading ? true : false,
              );
            },
          ),
        ],
      ),
    );
  }
}
