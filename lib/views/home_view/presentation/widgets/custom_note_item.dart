import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view/presentation/view/edit_note_view.dart';
import 'package:note_app/views/home_view/data/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteItem});
  final NoteModel noteItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // did not bother to implement GoRouter Package for this project
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const EditNoteView(),
      )),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.only(top: 18, bottom: 18),
        decoration: BoxDecoration(
          color: Color(noteItem.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteItem.title,
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle:  Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  noteItem.content,
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {

                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 32,
                  )),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Text(
                noteItem.dateTime,
                style: const TextStyle(color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
