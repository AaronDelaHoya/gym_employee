import 'package:flutter/material.dart';
import 'package:gym_employee/employee/model/incidencias.dart';
import 'package:gym_employee/employee/ui/widget/card_incidencias.dart';

class incidenciaView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _incidenciasView();

}
class _incidenciasView extends State<incidenciaView>{
  List<incidenciasModel>album=incidenciasModel.listModel();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      shrinkWrap: true,
        itemCount: album.length,
        itemBuilder:(BuildContext context, int index) {
          return CardIncidencias(album[index]);
        });
  }

}