import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/home_view/presentation/manager/add_note_cubit/add_note_cubit.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNoteCubit, AddNoteState>(
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 18),
        child: SingleChildScrollView(
          child: AddNoteForm(),
        ),
      ),
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        } else if (state is AddNoteFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message), backgroundColor: Colors.red),
          );
        }
      },
    );
  }
}
