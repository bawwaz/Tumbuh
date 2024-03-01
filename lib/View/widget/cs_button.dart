
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonWidget extends Container {

  final String buttonTxt;
  final VoidCallback onPressed;

  CustomButtonWidget({
    required this.buttonTxt, 
    required this.onPressed,
  });
  
  @override
  Widget build (BuildContext context) {
  return  ElevatedButton(
    onPressed: (){this.onPressed();},
    child: Text(
      buttonTxt,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
    ),
    style: ButtonStyle(
      fixedSize: MaterialStatePropertyAll(Size(300, 50)),
      backgroundColor: MaterialStatePropertyAll(Color(0xff003566)),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      )), 
    ),
  );
  } 
}