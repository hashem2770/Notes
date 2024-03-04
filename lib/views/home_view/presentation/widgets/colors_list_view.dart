import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/add_note_cubit/add_note_cubit.dart';
import 'colors_list_view_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink
  ];

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
            context.read<AddNoteCubit>().color = colors[index];
            setState(() {} );
          },
          child: ColorItem(isSelected: currentIndex == index,color: colors[index]),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 22),
        itemCount: colors.length,
      ),
    );
  }
}
