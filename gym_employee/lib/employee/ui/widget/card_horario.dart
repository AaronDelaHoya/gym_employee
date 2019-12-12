import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_employee/employee/model/horario.dart';

class CardHorario extends StatelessWidget{
  horarioModel model;
  CardHorario(this.model);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Container(
          margin: EdgeInsets.all(15.0),
          height: 150,width: 350,
          child: Column(
            children: <Widget>[
              Text(model.day,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w900
              )),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 15.0),
                          child: Row(
                            children: <Widget>[
                              Text("Entrada: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900
                                ),),
                              Text(model.inPut),
                            ],
                          ),
                        ),
                        Container(

                          child: Row(
                            children: <Widget>[
                              Text("Salida: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900
                                ),),
                              Text(model.outPut),
                            ],
                          ),
                        ),],
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Text("Descanso: ", style: TextStyle(fontWeight: FontWeight.w900),),
                          Text(model.breack)
                        ],
                      ),
                    ),
                  ],))
                  ],
                ),
              ),);
  }

}