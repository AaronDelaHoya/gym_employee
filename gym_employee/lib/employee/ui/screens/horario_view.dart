import 'package:flutter/material.dart';
import 'package:gym_employee/employee/model/horario.dart';
import 'package:gym_employee/employee/ui/widget/card_horario.dart';

class horarioView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _horarioView();

}
class _horarioView extends State<horarioView>{
  List<horarioModel>album = horarioModel.listHorarioModel();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        shrinkWrap: true,
        itemCount: album.length,
        itemBuilder:(BuildContext context, int index) {
          return CardHorario(album[index]);
        });
  }

}