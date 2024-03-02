import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () {

      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(14),

        ),
        child: const Center(
          child: Text('Save Note',style: TextStyle(color: Colors.white,fontSize: 18),),
        ),
      ),
    );
  }
}
