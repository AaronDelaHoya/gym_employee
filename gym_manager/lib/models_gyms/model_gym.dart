import 'package:gym_manager/models_gyms/modelCourses.dart';

class modelGym{
  String name;
  String addres;
  List<modelCourses> courses;
  String workingHours;

  modelGym(this.name, this.addres, this.courses, this.workingHours);

 static List<modelGym> listModel(){
   return [

   ];
 }
}