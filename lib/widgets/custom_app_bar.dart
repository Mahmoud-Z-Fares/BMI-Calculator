import 'package:bmi_app/consts.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("BMI Calculator", style: textStylwhite300w20px),
      backgroundColor: mainColor,
      centerTitle: true,
      elevation: 10,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
