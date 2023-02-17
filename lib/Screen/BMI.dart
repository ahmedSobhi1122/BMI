import 'package:bmi/Screen/calculate.dart';
import 'package:flutter/material.dart';

class Bmi_Screen extends StatefulWidget {
  const Bmi_Screen({Key? key}) : super(key: key);

  @override
  State<Bmi_Screen> createState() => _Bmi_ScreenState();
}

class _Bmi_ScreenState extends State<Bmi_Screen> {
  bool Male = true;
  int height = 170, weight = 65, age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🍕 Bmindex'),
        backgroundColor: Color(0xff131531),
      ),
      backgroundColor: Color(0xff08092C),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Male = !Male;
                      });
                    },
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          color: Male ? Color(0xffD80055) : Color(0xff202244),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 100, color: Colors.white),
                          const Text(
                            'male',
                            style: TextStyle(
                                color: Color(0xff9D9E9E), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Male = !Male;
                      });
                    },
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          color: !Male ? Color(0xffD80055) : Color(0xff202244),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 100, color: Colors.white),
                          const Text(
                            'female',
                            style: TextStyle(
                                color: Color(0xff9D9E9E), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff202244),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(color: Color(0xff9D9E9E)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        '${height}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' cm',
                        style: TextStyle(
                          color: Color(0xff9D9E9E),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                    min: 0,
                    max: 190,
                    divisions: 150,
                    activeColor: Color(0xffD8004F),
                    inactiveColor: Color(0xff3D3C61),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Color(0xff202244),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'weight',
                          style: TextStyle(
                            color: Color(0xff9D9E9E),
                          ),
                        ),
                        Text(
                          '$weight',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight < 200) weight++;
                                });
                              },
                              heroTag: 'weight++',
                              child: const Icon(Icons.add),
                              backgroundColor: const Color(0xff48485A),
                            ),
                            SizedBox(width: 5),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) weight--;
                                });
                              },
                              heroTag: 'weight--',
                              child: const Icon(Icons.remove),
                              backgroundColor: const Color(0xff48485A),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Color(0xff202244),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'age',
                          style: TextStyle(
                            color: Color(0xff9D9E9E),
                          ),
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (age < 120) age++;
                                });
                              },
                              heroTag: 'age++',
                              child: const Icon(Icons.add),
                              backgroundColor: const Color(0xff48485A),
                            ),
                            SizedBox(width: 5),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 0) age--;
                                });
                              },
                              heroTag: 'age--',
                              child: const Icon(Icons.remove),
                              backgroundColor: const Color(0xff48485A),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Calc(
                          height: height.toDouble(),
                          age: age.toDouble(),
                          weight: weight.toDouble()),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffD80055),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'calculate',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
