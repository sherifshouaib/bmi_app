import 'package:bmi_appmyself/models/elements.dart';
import 'package:bmi_appmyself/screens/home_page.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({super.key});

  /*double result = elements.weight.toDouble() /              //دي طريقة تانية لو مش عايز تخلي ال result  داخل ال elements class
      ((elements.height * elements.height) / 10000);*/

  double test() {
    if (((elements.height * elements.height) / 10000) == 0) {
      elements.result = 0;
    } else {
      elements.result = elements.weight.toDouble() /
          ((elements.height * elements.height) / 10000);
    }
    return elements.result;
  }

  String? healthy() {
    String helth;
    if (elements.result == 0) {
      helth = 'Unknown';
    } else if (elements.result < 18.5) {
      helth = 'Thin';
    } else if (elements.result > 18.5 && elements.result < 24.9) {
      helth = 'Normal';
    } else if (elements.result > 25 && elements.result < 29.9) {
      helth = 'Overweight';
    } else {
      helth = 'Obese';
    }
    return helth;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff02968A),
        title: Text(
          'Result',
          style: TextStyle(fontSize: 19, color: Color(0xffABFFFF)),
        ),
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Gender: ${elements.gender}',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Result: ${test().toStringAsFixed(1)}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Healthiness: ${healthy()}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Age: ${elements.age}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
