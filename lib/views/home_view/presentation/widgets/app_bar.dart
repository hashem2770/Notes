import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         const Text('Note App',style: TextStyle(color: Colors.white,fontSize: 24),),
          IconButton(onPressed: () {

          }, icon: const Icon(Icons.search,size: 24,color: Colors.white,)),
        ],
      ),
    );
  }
}