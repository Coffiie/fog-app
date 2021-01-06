import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  TextInputType textInputType;
  String errorText;
  String labelText;
  bool obscureText;
  TextEditingController controller;
  IconData suffixIcon;


  InputWidget({this.suffixIcon,this.textInputType,this.errorText,this.labelText,this.obscureText = false,this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        keyboardType: textInputType,
        decoration:
            InputDecoration(suffixIcon: Icon(suffixIcon),labelText: labelText, errorText: errorText),
      ),
    );
  }
}
