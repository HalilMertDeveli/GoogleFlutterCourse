class TeacherModel {
  final String id;
  final int age;
  final String name;

  const TeacherModel({required this.id, required this.age, required this.name});

  factory TeacherModel.fromJson(List<Map<String, dynamic>> json) {
    if (json.isNotEmpty) {
      json.map((everyMapInList) {
        return TeacherModel(
            id: everyMapInList['id'],
            age: everyMapInList['age'],
            name: everyMapInList['name']);
      });
    }

    return TeacherModel(id: "orospu", age: 31, name: 'Fatih öz');
  }
}
