import 'package:flutter/material.dart';

class topbar extends StatelessWidget{
  String title = "";
  double height = 0.0;

  topbar(this.title,this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0097a7),
            Color(0xFF00838f)
          ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        )
      ),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9, -0.9),
    );
  }

}