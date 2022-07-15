import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/bmi_calculator/bmi_screen.dart';
import 'package:udemy_flutter/modules/login_screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),

    );
  }
}
