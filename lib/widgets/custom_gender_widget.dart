import 'package:bmi_app/consts.dart';
import 'package:bmi_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomGender extends StatelessWidget {
  const CustomGender({
    super.key,
    required this.title,
    required this.picPath,
    required this.isMale,
    this.onTap,
  });
  final String title;
  final String picPath;
  final bool isMale;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isMale ? mainColor : secondColor,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(picPath),
              CustomText(title: title),
            ],
          ),
        ),
      ),
    );
  }
}
