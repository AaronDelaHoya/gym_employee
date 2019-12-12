import 'dart:ui';
import 'package:flutter/material.dart';

class incidenciasModel{
  String area;
  String date;
  String descrption;
  String edo;

  incidenciasModel(this.area,this.date,this.descrption,this.edo);

  static List<incidenciasModel> listModel(){
    return [
      incidenciasModel("Pesas", "18/04/2020","Aparato predicardor descompuesto","Pendiente"),
      incidenciasModel("Yoga", "30/04/2020","Fuga en el baño","Pendiente"),
      incidenciasModel("Box", "18/04/2020","Esquina del ring","Pendiente"),
      incidenciasModel("Pesas", "18/04/2020","Aparato de poleas flojo","Pendiente")
    ];
  }
}