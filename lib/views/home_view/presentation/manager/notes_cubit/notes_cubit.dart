import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/constant/hive_constant.dart';

import '../../../data/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


  // I don't need loading state as it's not a future call
  void fetchNotes() {
    try {
      // values is an Iterable of all items(notes)
      List<NoteModel> notes = Hive.box<NoteModel>(kNoteBox).values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
