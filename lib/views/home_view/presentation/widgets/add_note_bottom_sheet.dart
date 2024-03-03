import 'package:flutter/material.dart';
import 'package:note_app/views/home_view/presentation/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 18),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
          CustomButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }else{
               setState(() {
                 _autoValidateMode = AutovalidateMode.always;
               });
              }
            },
          ),
        ],
      ),
    );
  }
}
