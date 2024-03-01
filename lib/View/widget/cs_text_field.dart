import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.isPrice,
    required this.controller
    });

  final String labelText;
  final bool isPrice;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: 10),
      height: height * 0.06,
      width: width,
      child: TextField(
        controller: controller,
        keyboardType: isPrice ? TextInputType.number : null,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10,  bottom: 1),
          prefixIcon: isPrice == true
              ? Container(  
                  width: 20,
                  height: 30,
                  child: Center(
                    child: Text('Rp.',),
                  ),
                )
              : null,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(0xff003566),
            fontSize: 12,
            // fontWeight: FontWeight.bold
          ),
          fillColor: Color(0xffffffff),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color:  Color(0xffdadada))
          ),
          focusedBorder: OutlineInputBorder(  
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xff003566))
          ), 
        ),
      ),
    );
  }
}