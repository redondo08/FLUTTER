
class estudiantes{
  final int id;
  final String name;
  final int age;
  final String email;

  estudiantes({required this.id, required this.name, required this.age, required this.email});
 factory estudiantes.fromJson(Map<String, dynamic> json) {
    return estudiantes(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      email: json['email']
    );
  }
   Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
    'email': email
  };
  
  }