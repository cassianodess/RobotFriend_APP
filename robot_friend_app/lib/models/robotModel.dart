import 'dart:convert';

class Robot {
  int id;
  String name;
  String email;


  Robot({
    required this.id,
    required this.name,
    required this.email,
  });



  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  factory Robot.fromMap(Map<String, dynamic> map) {
    return Robot(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Robot.fromJson(String source) => Robot.fromMap(json.decode(source));
}
