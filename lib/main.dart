import 'package:flutter/material.dart';
import 'package:note_app/views/home_view/presentation/view/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          fontFamily: 'Cairo',
          colorSchemeSeed: Colors.amber),
      home: const NotesView(),
    );
  }
}
