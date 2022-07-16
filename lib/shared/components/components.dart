import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton ({
  required String text  ,
  required Function method ,
  double width = double.infinity ,
  Color BackgroundColor = Colors.blue ,


}) =>Container(
  width: width,
  height: 50.0,
  child: MaterialButton(onPressed: (){
    method();
  },
    child: Text(
      text ,
      style: TextStyle(
          color: Colors.white
      ),

    ),
  ),
  decoration: BoxDecoration(
    color: BackgroundColor,
    borderRadius: BorderRadius.circular(10.0),
  ),
);

Widget defaultTextFormFeild({
  required TextInputType type ,
  required TextEditingController editingController ,
  required String label ,
  IconData? prefxIcon,
  IconData? suffxIcon ,
  String? Function(String? value)? validate,
  VoidCallback? suffxFunc ,
  bool password = false ,
}) => TextFormField(
  keyboardType: type,
  obscureText: password,
  controller: editingController,
  validator: validate,
  decoration: InputDecoration(
      prefixIcon: Icon(
          prefxIcon
      ) ,
      suffixIcon: suffxIcon != null ?  IconButton(
        onPressed: suffxFunc,
        icon: Icon(
            suffxIcon
        ),
      ) : null,
      label: Text(label == null ? '' : label),
      border: OutlineInputBorder()
  ),
) ;