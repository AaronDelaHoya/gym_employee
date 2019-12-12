import 'package:flutter/material.dart';

class cardNuevaIncidencia extends StatefulWidget{

  final String zona;
  final String description;
  final String hour;

  cardNuevaIncidencia({this.zona, this.description, this.hour});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _cardNuevaIncidencia();
  }

}
class _cardNuevaIncidencia extends State<cardNuevaIncidencia>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 150.00,
      height: 75.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1.0
          )
        ]
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "Zona: ",
                  style: TextStyle(
                    fontWeight: FontWeight.w900
                  ),),
                Text(widget.zona)
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "Zona: ",
                  style: TextStyle(
                      fontWeight: FontWeight.w900
                  ),),
                Text(widget.description)
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  "Hora: ",
                  style: TextStyle(
                      fontWeight: FontWeight.w900
                  ),),
                Text(widget.hour)
              ],
            ),
          ),
          Container(
              child: InkWell(
                focusColor: Colors.cyan,
                child: Text(
                  "Agregar",
                  style: TextStyle(
                    color: Colors.white
                  ),),
              ),
          )
        ],
      ),
    );
  }

}