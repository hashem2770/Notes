import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 18),
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
