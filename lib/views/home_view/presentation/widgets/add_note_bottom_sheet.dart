import 'package:flutter/material.dart';
import 'package:note_app/views/home_view/presentation/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0,horizontal: 18),
      child: Column(
        children: [
          CustomTextField(

          ),
        ],
      ),
    );
  }
}