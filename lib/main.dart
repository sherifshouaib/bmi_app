import 'package:bmi_appmyself/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMI_APP());
}

//test


class BMI_APP extends StatelessWidget {
  const BMI_APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
