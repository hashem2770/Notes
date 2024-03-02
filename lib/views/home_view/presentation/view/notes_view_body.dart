import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
                children: [
                  CustomAppBar(),
                ]
            ),
          ),
        )
    );
  }
}
