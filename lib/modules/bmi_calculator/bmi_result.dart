import 'package:flutter/material.dart';

class BmiResult extends  StatelessWidget {

  final bool isMale ;
  final int result ;
  final int age ;

  //Constructor
  BmiResult({required this.isMale,
    required this.result,
    required this.age}) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI RESULT'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}' ,
              style: TextStyle(
                fontSize: 30.0 ,
              ),
            ) ,
            Text(
              'Result : ${result}',
              style: TextStyle(
                fontSize: 30.0 ,
              ),
            ) ,
            Text(
              'Age : ${age}' ,
              style: TextStyle(
                fontSize: 30.0 ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
