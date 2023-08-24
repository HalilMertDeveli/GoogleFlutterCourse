import 'package:ethernet_app_with_google/service/teacher_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int teacherId = 0;

  String teacherName = "";
  String teacherDepartment = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Home page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              teacherId.toString(),
              style: const TextStyle(
                  fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Text(
              teacherName.toString(),
              style: const TextStyle(
                  fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Text(
              teacherDepartment.toString(),
              style: const TextStyle(
                  fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    final teacherService = TeacherService();
                    final teacherInstance = teacherService.downloadTeacher();
                    teacherId = teacherInstance.teacherId!;
                    teacherName = teacherInstance.teacherName!;
                    teacherDepartment = teacherInstance.teacherDepartment!;
                  });
                },
                child: const Icon(Icons.get_app))
          ],
        ),
      ),
    );
  }
}
