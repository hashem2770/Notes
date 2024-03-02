import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Notes',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white54, borderRadius: BorderRadius.circular(14)),
            child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 28,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
