import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Notes',
            style: TextStyle( fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white24, borderRadius: BorderRadius.circular(14)),
            child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 28,

                )),
          ),
        ],
      ),
    );
  }
}
