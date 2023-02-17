import 'package:flutter/material.dart';
import 'Screen/BMI.dart';

void main() {
  runApp(Main());
}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
        home: Bmi_Screen()
    );
  }
}
