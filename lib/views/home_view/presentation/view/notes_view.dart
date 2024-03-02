import 'package:flutter/material.dart';
import 'package:note_app/views/home_view/presentation/widgets/app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
            ]
          ),
        )
      ),
    );
  }
}
