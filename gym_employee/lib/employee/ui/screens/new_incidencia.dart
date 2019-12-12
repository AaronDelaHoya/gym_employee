import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_employee/componets/btn_personal.dart';
import 'package:gym_employee/componets/text_form_file.dart';

class newIncidencia extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _newIncidencia();
  }

}
class _newIncidencia extends State<newIncidencia>{

  var zonaController = new TextEditingController();
  var descripController = new TextEditingController();


  static DateTime now = new DateTime.now();
  DateTime date = new DateTime(now.year, now.month, now.day);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Nueva Incidencia"),
        ),
        body: Container(
          margin: EdgeInsets.only(top:150.0),
          alignment: Alignment(0.0,0.0),
          child: Column(
            children: <Widget>[
              Container(
                child: textFormFile(
                  icon: Icon(Icons.location_on),
                  hintText: "Zona de incidencia",
                  controller: zonaController,
                  inputType: null,
                  maxLine: 1,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                child: textFormFile(
                  icon: Icon(Icons.content_paste),
                  hintText: "Descripción de la incidencia",
                  controller: descripController,
                  inputType: TextInputType.multiline,
                  maxLine: 5,
              ),),
              Container(
               margin: EdgeInsets.only(top: 15.0),
               child: BtnLogIn(
                 name: "Agragar",
                 height: 50,
                 width: 150,
                 color1: 0xFF0097a7,
                 color2: 0xFF0097a7,
                 actionTap: (){
                   showDialog(context: context,
                     builder: (BuildContext context){
                     return AlertDialog(
                       title: Text(zonaController.text),
                       content: Text(
                           "Desc: ${descripController.text}\n"
                           "Fecha: ${date.day} ${date.month} ${date.year}"),
                     );
                     }
                   );
                 },
               )
              )
            ],
          ),
        )
      ),
    );
  }

}

