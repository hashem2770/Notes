import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/views/home_view/data/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../core/constant/hive_constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;
  Color color=Colors.blue;


  void addNote(NoteModel note) async {
    note.color = color.value ;
    emit(AddNoteLoading());
    isLoading = true;
    try {

      Box<NoteModel> noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
      isLoading = false;
    } catch (e) {
      emit(AddNoteFailure(message: e.toString()));
      isLoading = false;
    }
  }
}
