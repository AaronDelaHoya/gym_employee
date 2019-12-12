import 'package:flutter/material.dart';

class textFormFile extends StatefulWidget {

  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final Icon icon;
  final TextInputType inputType;
  int maxLine = 1;

  textFormFile({
    this.hintText,
    this.isPassword = false,
    this.controller,
    this.icon,
    this.inputType,
    this.maxLine
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _textFormFile();
  }

}
class _textFormFile extends State<textFormFile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          icon: widget.icon,
          hintText: widget.hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.white,
        ),
        obscureText: widget.isPassword ? true : false,
        keyboardType: widget.inputType,
        maxLines: widget.maxLine,
      ),
    );
  }

}
