import 'package:ethernet_app_with_google/model/teacher_model.dart';
import 'package:ethernet_app_with_google/service/teacher_service.dart';
import 'package:flutter/material.dart';

class FetchData extends StatefulWidget {
  const FetchData({super.key});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  late Future<TeacherModel> futureTeacher;
  final teacherService = TeacherService();
  @override
  void initState() {
    super.initState();
    futureTeacher = teacherService.fetchTeacher();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch data Page'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<TeacherModel>(
          future: futureTeacher,
          builder: (context,snapshot){
            if (snapshot.hasData) {
              return Text(snapshot.data!.name);
            }
            else if(snapshot.hasError){
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      )
    );
  }
}