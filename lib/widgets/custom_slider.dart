import 'package:bmi_app/consts.dart';
import 'package:bmi_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key, this.onChanged, required this.sliderValue});

  final double sliderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: secondColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(title: "Height"),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: sliderValue.round().toString(),
                  style: textStylwhite300w40px,
                ),
                TextSpan(
                  text: "CM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Slider(value: sliderValue, onChanged: onChanged, min: 50, max: 200),
        ],
      ),
    );
  }
}
