class Pengguna {
  final String? id;
  final String? name;
  final String? username;
  final String? email;
  final String? password;

  Pengguna({this.id, this.name, this.username, this.email, this.password});

  factory Pengguna.fromJson(Map<String, dynamic> json) {
    return Pengguna(
        id: json['id'] as String,
        name: json['name'] as String,
        username: json['username'] as String,
        email: json['email'] as String,
        password: json['password'] as String);
  }


  @override
  String toString() {
    // TODO: implement toString
    return 'Pengguna{this.id, this.name, this.username, this.email, this.password};';
  }
}
