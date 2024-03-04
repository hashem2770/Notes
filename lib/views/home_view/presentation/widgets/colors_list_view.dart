import 'package:flutter/material.dart';

import 'colors_list_view_item.dart';
class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ColorItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemCount: 5,
      ),
    );
  }
}
