import 'package:flutter/material.dart';
import 'package:note_app/core/constant/colors.dart';
import 'package:note_app/core/constant/hive_constant.dart';
import 'package:note_app/views/home_view/data/models/note_model.dart';
import 'package:note_app/views/home_view/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/home_view/presentation/view/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    // as it's a single screen app
    // it does not really matter if I putted the BlocProvider here
    // or in the home view
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: kPrimaryColor,
          brightness: Brightness.dark,
          fontFamily: 'Cairo',
        ),
        home: const NotesView(),
      ),
    );
  }
}
