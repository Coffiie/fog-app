import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextInputType textInputType;
  final String errorText;
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final IconData suffixIcon;


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
