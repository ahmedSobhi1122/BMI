import 'dart:math';

import 'package:bmi/Screen/BMI.dart';
import 'package:flutter/material.dart';

class Calc extends StatelessWidget {
  double height = 0, weight = 0, age = 0, res = 0;
  Calc(
      {Key? key, required this.weight, required this.height, required this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🍕 Bmindex'),
        backgroundColor: Color(0xff131531),
      ),
      backgroundColor: Color(0xff08092C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Your result',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff202244),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Spacer(),
                    if ((weight / pow(height / 100, 2)) >= 18.5 &&
                        (weight / pow(height / 100, 2)) < 25)
                      Text(
                        'Normal',
                        style: TextStyle(
                            color: Color(0xff00BD01),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    else if ((weight / pow(height / 100, 2)) >= 25 &&
                        (weight / pow(height / 100, 2)) < 30)
                      Text(
                        'Average',
                        style: TextStyle(
                            color: Color(0xffFFFF66),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    else if ((weight / pow(height / 100, 2)) >= 30 &&
                        (weight / pow(height / 100, 2)) < 40)
                      Text(
                        'Important',
                        style: TextStyle(
                            color: Color(0xffFE9900),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    else if ((weight / pow(height / 100, 2)) >= 40)
                      Text(
                        'severe',
                        style: TextStyle(
                            color: Color(0xffC55956),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    Spacer(),
                    Text(
                      '${(weight / pow(height / 100, 2)).toStringAsFixed(2)}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'your body weight is absolutely normal,\n Good job! 🦾',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffD80055),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'Recalculate',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
