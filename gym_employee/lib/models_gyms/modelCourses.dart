
class modelCourses{

  final String fecha;
  final String hourStar;
  final String hourEnd;
  final String gymKey;
  final String coachKey;
  final String description;

  modelCourses(this.fecha, this.hourStar, this.hourEnd, this.gymKey, this.coachKey, this.description);

  static List<modelCourses> listModel(){
    return [
      modelCourses("15/01/2020","8:00","9:00","gym123","15041233","Yoga"),
      modelCourses("15/01/2020","9:00","10:00","gym123","15041201","Spinning"),
      modelCourses("15/01/2020","8:00","22:00","gym123","15041245","Pesas"),
      modelCourses("15/01/2020","19:00","21:00","gym123","15041233","Box"),
      modelCourses("15/01/2020","8:00","9:00","gym456","15041233","Yoga"),
      modelCourses("15/01/2020","9:00","10:00","gym456","15041201","Spinning"),
      modelCourses("15/01/2020","8:00","22:00","gym456","15041245","Pesas"),
      modelCourses("15/01/2020","19:00","21:00","gym456","15041233","Box"),
      modelCourses("15/01/2020","8:00","9:00","gym789","15041233","Yoga"),
      modelCourses("15/01/2020","9:00","10:00","gym789","15041201","Spinning"),
      modelCourses("15/01/2020","8:00","22:00","gym789","15041245","Pesas"),
      modelCourses("15/01/2020","19:00","21:00","gym789","15041233","Box"),
    ];
  }

}