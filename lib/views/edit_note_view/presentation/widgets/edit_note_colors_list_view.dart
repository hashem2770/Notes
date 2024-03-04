import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import '../../../home_view/data/models/note_model.dart';
import '../../../home_view/presentation/widgets/colors_list_view_item.dart';
class EditNoteColorsListView extends StatefulWidget {
  const EditNoteColorsListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = kColors.indexOf(Color(widget.note.color));
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            currentIndex = index;
            widget.note.color = kColors[index].value;
            setState(() {});
          },
          child: ColorItem(
              isSelected: currentIndex == index, color: kColors[index]),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 22),
        itemCount: kColors.length,
      ),
    );
  }
}
