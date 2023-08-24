import 'package:ethernet_app_with_google/models/teacher_model.dart';

class TeacherService{
  Teacher downloadTeacher(){
    final teacherJson = {
      'id':1,
      'name':'Halil Mert',
      'department':'Computer science',
    };

    final incomingTeacher = Teacher.otherFromMap(teacherJson);

    return incomingTeacher;

  }
}