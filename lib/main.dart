import 'package:bmi_app/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: HomeView.routeName,
      routes: {HomeView.routeName: (context) => HomeView()},
      debugShowCheckedModeBanner: false,
      color: Color(0xff1C2135),
    ),
  );
}
