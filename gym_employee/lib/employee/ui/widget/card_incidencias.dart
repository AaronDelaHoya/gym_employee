import 'package:flutter/material.dart';
import 'package:gym_employee/employee/model/incidencias.dart';

class CardIncidencias extends StatelessWidget{
  incidenciasModel model;
  CardIncidencias(this.model);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Container(
          margin: EdgeInsets.all(15.0),
          height: 150,width: 350,
          child: InkWell(
            child:  Row(
              children: <Widget>[
                Icon(Icons.warning, color: Colors.yellow),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 15.0),
                            child: Row(
                              children: <Widget>[
                                Text("Zona: ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900
                                  ),),
                                Text(model.area,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),),
                              ],
                            ),
                          ),

                          Text("Fecha: ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900
                            ),),
                          Text(model.date)],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Descripción: ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900
                              ),),
                            Text(model.descrption),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50.0, left: 140.0),
                        child: Row(
                          children: <Widget>[
                            Text("Estado: ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900
                              ),),
                            Text(model.edo)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }

}