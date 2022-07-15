import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/bmi_calculator/bmi_result.dart';

class BmiScreen extends StatefulWidget {

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  int height = 150 ;
  int age =22 ;
  int weight = 60 ;
  bool isMale = false;

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
backgroundColor: Colors.grey[900],
        elevation: 10.0,
        title: Center(
          child: Text(
            'BMI CALCULATOR' ,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold ,

            ),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Expanded(
             child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsetsDirectional.all(30.0),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.pink[400] : Colors.grey[700]  ,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: [
                              Container(
                                height: 50.0,
                                child: Image(
                                fit: BoxFit.fill,
                                   color: Colors.white70,
                                   image: AssetImage('images/male.png')
                                ),
                              ) ,
                            SizedBox(height: 20.0,) ,
                            Text(
                              'Male',
                              style: TextStyle(
                                fontWeight: FontWeight.bold ,
                                fontSize: 20.0
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: (){
                        isMale = false;
                        setState(() {

                        });
                      },
                      child: Container(

                        padding: const EdgeInsetsDirectional.all(30.0),
                        decoration: BoxDecoration(
                          color: !isMale ? Colors.pink[400] :  Colors.grey[700] ,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 70.0,
                              child: Image(
                                  fit: BoxFit.fill,
                                  color: Colors.white70,
                                  image: AssetImage('images/female.png')
                              ),
                            ) ,
                            SizedBox(height: 20.0,) ,
                            Text(
                              'Female',

                              style: TextStyle(
                                  fontWeight: FontWeight.bold ,
                                  fontSize: 20.0
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
          ),
           ) ,
           Expanded(
            child:  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[700] ,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'HEIGHT' ,
                      style: TextStyle(
                        fontSize: 25.0 ,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline:TextBaseline.alphabetic ,
                      children: [
                        Text(
                          '${height}' ,
                          style: TextStyle(
                            fontSize: 50.0 ,
                            fontWeight: FontWeight.bold ,
                            color: Colors.white ,
                          ),
                        ),
                        Text(
                          'cm' ,
                          style: TextStyle(
                              fontSize: 16.0 ,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ) ,
                    SizedBox( height: 10.0) ,
                    Slider(value: height.toDouble(),
                        activeColor: Colors.pink[400],
                        inactiveColor: Colors.pink[200],
                        max: 200,
                        min: 100,
                        onChanged: (value){
                          setState(() {

                            height = value.round();
                          });
                          print(height.toString());
                        }) ,

                  ],
                ),
              ),
            ),
          ) ,
           Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsetsDirectional.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[700] ,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'AGE' ,
                            style: TextStyle(
                                fontSize: 25.0 ,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '${age}' ,
                            style: TextStyle(
                                fontSize: 35.0 ,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                              heroTag: 'age--',
                                onPressed: (){
                                  AGEMinus();
                              } ,
                                mini: true,
                                backgroundColor: Colors.pink[400],
                                child: Icon(
                                    Icons.remove
                                ),) ,
                              FloatingActionButton(
                                heroTag: 'age++',
                                onPressed: (){
                                  AGEPlus();
                              } ,
                                mini: true,
                                backgroundColor: Colors.pink[400],
                                child: Icon(
                                    Icons.add
                                ),),


                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0) ,
                  Expanded(
                    child: Container(
                      padding: const EdgeInsetsDirectional.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[700] ,
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT' ,
                            style: TextStyle(
                                fontSize: 25.0 ,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '${weight}' ,
                            style: TextStyle(
                                fontSize: 35.0 ,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                    WEIGHTMinus();
                              } ,
                                heroTag: 'weight--',
                                mini: true,
                                backgroundColor: Colors.pink[400],
                                child: Icon(
                                    Icons.remove
                                ),) ,
                              FloatingActionButton(onPressed: (){
                                  WEIGHTPlus();
                              } ,
                                heroTag: 'weight++',
                                mini: true,
                                backgroundColor: Colors.pink[400],
                                child: Icon(
                                    Icons.add
                                ),),


                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ) ,

          Container(
            width: double.infinity,
            height: 60.0,
            child: MaterialButton(onPressed: (){
                var result = weight / pow(height / 100, 2);

                Navigator.push(context,
                    MaterialPageRoute(builder:
                    (context) => BmiResult(isMale: isMale,result: result.round(),age: age)
                    ));
            },
              color: Colors.pink[400],
              child:Text(
                'Calculate' ,
                style: TextStyle(
                    fontSize: 30.0 ,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ) ,
            ),
          )

        ],

      ),
    );
  }


  void WEIGHTPlus() {
  weight++ ;
  setState(() {

  });
  }

  void WEIGHTMinus() {
    setState(() {
      weight--;
    });
  }

  void AGEPlus () {
    setState(() {
     age++ ;

    });
  }
  void AGEMinus () {
    age--;
    setState(() {

    });
  }
}

