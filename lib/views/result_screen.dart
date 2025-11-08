import 'package:bmi_app/consts.dart';
import 'package:bmi_app/views/home_view.dart';
import 'package:bmi_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});
  static const routeName = 'ResultScreen';

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    BMICalculator bmiCalculator =
        ModalRoute.of(context)!.settings.arguments as BMICalculator;

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: mainColor,
      bottomNavigationBar: CustomButton(
        title: "Re-Calculate",
        onPressed: () => Navigator.pop(context),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Your Result",
                style: textStylwhite300w40px,
                textAlign: TextAlign.left,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: secondColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmiCalculator.resultBMI,
                        style: textStylwhite300w40px,
                      ),
                      Text(
                        bmiCalculator.calculatBMI.toString(),
                        style: textStylwhite300w20px,
                      ),
                      Text(
                        "Message you have to play some exercises",
                        style: textStylwhite300w20px,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
