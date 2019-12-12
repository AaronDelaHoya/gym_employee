import 'package:flutter/material.dart';
import 'package:gym_employee/employee/ui/screens/horario_view.dart';
import 'package:gym_employee/employee/ui/screens/incidencia_view.dart';
import 'package:gym_employee/employee/ui/screens/new_incidencia.dart';

class mainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 50,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Bienvenido: "),
            primary: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add,color: Colors.white,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return newIncidencia();
                  }));
                },
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.warning,
                )),
                Tab(
                    icon: Icon(
                  Icons.schedule,
                )),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              incidenciaView(),
              horarioView(),
            ],
          ),
        ),
      ),
    );
  }
}
