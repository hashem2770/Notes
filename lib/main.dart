import 'package:flutter/material.dart';
import 'package:note_app/core/constant/colors.dart';
import 'package:note_app/core/constant/hive_constant.dart';
import 'package:note_app/views/home_view/data/models/note_model.dart';
import 'package:note_app/views/home_view/presentation/view/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
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
          primaryColor: kPrimaryColor,
          brightness: Brightness.dark,
          fontFamily: 'Cairo',
         ),
      home: const NotesView(),
    );
  }
}
