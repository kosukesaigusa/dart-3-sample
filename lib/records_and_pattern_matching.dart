(double x, double y) geoLocationOfTokyoStation() {
  return (35.681236, 139.767125);
}

class Person {
  const Person({required this.name, required this.age, required this.height});

  final String name;
  final int age;
  final int height;

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'] as String? ?? '',
      age: json['age'] as int? ?? 0,
      height: json['height'] as int? ?? 0,
    );
  }
}

(String, int, int) getPerson(Map<String, dynamic> json) {
  return (
    json['name'],
    json['age'],
    json['height'],
  );
}
