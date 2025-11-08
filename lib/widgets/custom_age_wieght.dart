import 'package:bmi_app/consts.dart';
import 'package:bmi_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAgeandWieghtWidget extends StatelessWidget {
  const CustomAgeandWieghtWidget({
    super.key,
    required this.value,
    required this.title,
    this.onPressed1,
    this.onPressed2,
    required this.heroTag,
    required this.heroTag2,
    required this.color,
  });
  final String heroTag;
  final String heroTag2;

  final int value;
  final String title;
  final void Function()? onPressed1;
  final void Function()? onPressed2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 10,
        children: [
          CustomText(title: title),
          Text(value.toString(), style: textStylwhite300w40px),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                heroTag: heroTag,
                backgroundColor: Color(0xff8B8C9E),
                shape: CircleBorder(),

                onPressed: onPressed1,
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                heroTag: heroTag2,
                backgroundColor: Color(0xff8B8C9E),

                shape: CircleBorder(),
                onPressed: onPressed2,
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
