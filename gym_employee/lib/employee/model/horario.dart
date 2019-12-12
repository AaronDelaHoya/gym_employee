import 'dart:ui';
import 'package:flutter/material.dart';

class horarioModel{
  String day;
  String inPut;
  String outPut;
  String breack;

  horarioModel(this.day,this.inPut,this.outPut,this.breack);

  static List<horarioModel> listHorarioModel(){
    return [
      horarioModel("Lunes", "6:00","15:00","12:00"),
      horarioModel("Martes", "6:00","15:00","11:00"),
      horarioModel("Miercoles", "6:00","15:00","13:00"),
      horarioModel("Jueves", "6:00","15:00","09:00"),
      horarioModel("Viernes", "6:00","15:00","09:00"),
      horarioModel("Sabado", "6:00","15:00","09:00")
    ];
  }
}