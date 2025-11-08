import 'package:bmi_app/consts.dart';
import 'package:bmi_app/views/result_screen.dart';
import 'package:bmi_app/widgets/custom_age_wieght.dart';
import 'package:bmi_app/widgets/custom_app_bar.dart';
import 'package:bmi_app/widgets/custom_gender_widget.dart';
import 'package:bmi_app/widgets/custom_slider.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = 'HomeScreen';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double sliderValue = 50;
  int wieght = 20;
  int age = 25;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButton(
        title: "Calculate",
        onPressed: () {
          Navigator.pushNamed(
            context,
            ResultScreen.routeName,
            arguments: BMICalculator(
              gender: "Male",
              age: age,
              wieght: wieght,
              height: sliderValue.toInt(),
            ),
          );
        },
      ),
      backgroundColor: mainColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            //Wiegh and Height row
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  CustomGender(
                    onTap: () => setState(() => isMale = true),

                    isMale: isMale,
                    title: "Male",
                    picPath: "assets/images/male.png",
                  ),

                  CustomGender(
                    onTap: () => setState(() => isMale = false),
                    isMale: !isMale,
                    title: "Femal",
                    picPath: "assets/images/female.png",
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: CustomSlider(
                sliderValue: sliderValue,
                onChanged: (v) {
                  sliderValue = v;

                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 25),

            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: CustomAgeandWieghtWidget(
                      color: Color(0xff24263B),
                      heroTag: "h11",
                      heroTag2: "h12",
                      title: "Wieght",
                      value: wieght,
                      onPressed1: () {
                        wieght++;
                        setState(() {});
                      },
                      onPressed2: () {
                        wieght--;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomAgeandWieghtWidget(
                      color: secondColor,
                      heroTag2: "h21",
                      heroTag: "h22",
                      title: "Age",
                      value: age,
                      onPressed1: () {
                        age++;
                        setState(() {});
                      },
                      onPressed2: () {
                        age--;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: butColor),
      onPressed: onPressed,
      child: Text(title, style: textStylwhite300w20px),
    );
  }
}

class BMICalculator {
  BMICalculator({
    required this.gender,
    required this.height,
    required this.age,
    required this.wieght,
  });
  String gender;
  int height;
  int age;
  int wieght;

  double get calculatBMI => wieght / ((height / 100) * (height / 100)).round();
  String get resultBMI {
    if (calculatBMI < 18.5) {
      return "UnderWeight";
    } else if (calculatBMI < 25) {
      return "Normal";
    } else if (calculatBMI < 30) {
      return "OverWeight";
    } else {
      return "Obese";
    }
  }
}
