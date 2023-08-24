class Teacher {
  int? teacherId;
  String? teacherName;
  String? teacherDepartment;

  Teacher(
      {required this.teacherId,
      required this.teacherName,
      required this.teacherDepartment});

  Teacher.fromMap(Map<String, dynamic> jsonInput) {
    teacherId = jsonInput['id'];
    teacherName = jsonInput['name'];
    teacherDepartment = jsonInput['department'];
  }

  //other way to pass coming value form JSON
  Teacher.otherFromMap(Map<String, dynamic> jsonInput)
      : this(
          teacherId: jsonInput['id'],
          teacherName: jsonInput['name'],
          teacherDepartment: jsonInput['department'],
        );
}
