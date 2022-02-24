class Employee {
  late String username;
  late String email;
  late String password;

//<editor-fold desc="Data Methods">

  Employee({
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Employee &&
          runtimeType == other.runtimeType &&
          username == other.username &&
          email == other.email &&
          password == other.password);

  @override
  int get hashCode => username.hashCode ^ email.hashCode ^ password.hashCode;

  @override
  String toString() {
    return 'Employee{' +
        ' username: $username,' +
        ' email: $email,' +
        ' password: $password,' +
        '}';
  }

  Employee copyWith({
    String? username,
    String? email,
    String? password,
  }) {
    return Employee(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': this.username,
      'email': this.email,
      'password': this.password,
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      username: map['username'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

//</editor-fold>
}