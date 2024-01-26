import 'package:bmi_appmyself/models/elements.dart';
import 'package:bmi_appmyself/screens/result_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff02968A),
        title: Text(
          'Body Mass Index',
          style: TextStyle(fontSize: 19, color: Color(0xffABFFFF)),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    elements.gender = 'Male';
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff02968A),
                    minimumSize: Size(180, 155),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.male,
                        size: 80,
                        color: Colors.white,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    elements.gender = 'Female';
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5D7D8C),
                    minimumSize: Size(180, 155),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.female,
                        size: 80,
                        color: Colors.white,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff5C7C8B),
              ),
              height: 160,
              width: 380,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                        color: Color(0xff00070F),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        elements.height.toStringAsFixed(1),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'CM',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                      value: elements.height,
                      min: 0,
                      max: 300,
                      thumbColor: Color(0xff02968A),
                      activeColor: Color(0xff02968A),
                      inactiveColor: Color(0xff02968A),
                      onChanged: ((value) {
                        setState(() {
                          elements.height = value;
                        });
                      }))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff5C7C8B),
                  ),
                  height: 155,
                  width: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${elements.weight}",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff029386),
                                minimumSize: Size(20, 20)),
                            onPressed: () {
                              setState(() {
                                if (elements.weight > 0) {
                                  elements.weight--;
                                }
                              });
                            },
                            child: Icon(
                              size: 22,
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff029386),
                                minimumSize: Size(20, 20)),
                            onPressed: () {
                              setState(() {
                                elements.weight++;
                              });
                            },
                            child: Icon(
                              size: 22,
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff5C7C8B),
                  ),
                  height: 155,
                  width: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${elements.age}",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff029386),
                                minimumSize: Size(20, 20)),
                            onPressed: () {
                              setState(() {
                                if (elements.age > 0) {
                                  elements.age--;
                                }
                              });
                            },
                            child: Icon(
                              size: 22,
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff029386),
                                minimumSize: Size(20, 20)),
                            onPressed: () {
                              setState(() {
                                elements.age++;
                              });
                            },
                            child: Icon(
                              size: 22,
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Result();
                    },
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                color: Color(0xff02968A),
                height: 50,
                width: double.infinity,
                child: Text(
                  'Calculate',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
