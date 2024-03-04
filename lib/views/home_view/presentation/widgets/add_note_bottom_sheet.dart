import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/views/home_view/presentation/manager/add_note_cubit/add_note_cubit.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNoteCubit, AddNoteState>(
      child: Padding(
        padding: EdgeInsets.only(
            left: 18,
            right: 18,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
            top: 20),
        child: const SingleChildScrollView(
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
/*In order to make the bottom sheet pushed up and not cover the keyboard, we added the following code:
* 1- in scaffold : resizeToAvoidBottomInset: false,
* 2- showModalBottomSheet : isScrollControlled: true,
* 3- in showModalBottomSheet builder return widget after wrapping it with padding :
*  bottom: MediaQuery.of(context).viewInsets.bottom
*
* */
