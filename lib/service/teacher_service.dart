import 'dart:convert';

import 'package:ethernet_app_with_google/model/teacher_model.dart';
import 'package:http/http.dart' as http;
class TeacherService{
  Future<TeacherModel> fetchTeacher() async{
    final response = await http.get(Uri.parse('https://64ec9a93f9b2b70f2bfaa265.mockapi.io/teacher/halil/Teacher'));

    if (response.statusCode==200) {
      final List<Map<String,dynamic>> jsonList = jsonDecode(response.body);

      return TeacherModel.fromJson(jsonList);
    }
    else{
      throw Exception("There is some error in service class ");
    }
  }
}