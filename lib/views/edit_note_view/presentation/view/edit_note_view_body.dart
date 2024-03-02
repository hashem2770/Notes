import 'package:flutter/material.dart';
import 'package:note_app/views/home_view/presentation/widgets/app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 18),
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Note',icon: Icons.check),
          ],
        ),
      ),
    );
  }
}
