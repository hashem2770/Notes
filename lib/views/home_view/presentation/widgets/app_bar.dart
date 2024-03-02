import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            title,
            style: const TextStyle( fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white24, borderRadius: BorderRadius.circular(14)),
            child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                 icon,
                  size: 28,

                )),
          ),
        ],
      ),
    );
  }
}
