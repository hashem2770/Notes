import 'package:flutter/material.dart';

import 'notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan[700],
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
