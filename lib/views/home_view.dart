import 'package:bmi_app/consts.dart';
import 'package:bmi_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = 'HomeScreen';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double sliderValue = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Row(
            spacing: 10,
            children: [
              CustomGender(title: "Male", picPath: "assets/images/male.png"),

              CustomGender(title: "Femal", picPath: "assets/images/female.png"),
            ],
          ),
          CustomSlider(
            sliderValue: sliderValue,
            onChanged: (v) {
              sliderValue = v;

              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {
  CustomSlider({super.key, this.onChanged, required this.sliderValue});

  double sliderValue;
  void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: mainColor),
      child: Column(
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

class CustomGender extends StatelessWidget {
  const CustomGender({super.key, required this.title, required this.picPath});
  final String title;
  final String picPath;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: mainColor),
        child: Column(
          children: [
            Image.asset(picPath),
            CustomText(title: title),
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: textStylygray300w20px);
  }
}
