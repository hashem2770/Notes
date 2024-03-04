import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/constant/hive_constant.dart';

import '../../../data/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel> notes = [];
  // I don't need loading state as it's not a future call
  void fetchNotes() {
    try {
      // values is an Iterable of all items(notes)
       notes = Hive.box<NoteModel>(kNoteBox).values.toList();
      emit(NotesSuccess(notes));
      // we can remove the catch block as it's just display getter
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
