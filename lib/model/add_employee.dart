

class AddEmployee {

 late int id;
 late String designation;
 late String fname;
 late String lname;
 late String department;


 late String password;
 late String area;
 late String gender;
 late String dob;
 late String paddress;
 late String praddress;
 late double pcode;
 late String place;
 late String country;
 late String phone;
 late String email;
 late String images;
 late String imageUrl;
 late double basicsalary;
 late double houserent;
 late double medical ;
 late double transport;
 late double overtime;
 late double salary;

//<editor-fold desc="Data Methods">

 AddEmployee({
    required this.id,
    required this.designation,
    required this.fname,
    required this.lname,
    required this.department,
    required this.password,
    required this.area,
    required this.gender,
    required this.dob,
    required this.paddress,
    required this.praddress,
    required this.pcode,
    required this.place,
    required this.country,
    required this.phone,
    required this.email,
    required this.images,
    required this.imageUrl,
    required this.basicsalary,
    required this.houserent,
    required this.medical,
    required this.transport,
    required this.overtime,
    required this.salary,
  });

 @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddEmployee &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          designation == other.designation &&
          fname == other.fname &&
          lname == other.lname &&
          department == other.department &&
          password == other.password &&
          area == other.area &&
          gender == other.gender &&
          dob == other.dob &&
          paddress == other.paddress &&
          praddress == other.praddress &&
          pcode == other.pcode &&
          place == other.place &&
          country == other.country &&
          phone == other.phone &&
          email == other.email &&
          images == other.images &&
          imageUrl == other.imageUrl &&
          basicsalary == other.basicsalary &&
          houserent == other.houserent &&
          medical == other.medical &&
          transport == other.transport &&
          overtime == other.overtime &&
          salary == other.salary);

 @override
  int get hashCode =>
      id.hashCode ^
      designation.hashCode ^
      fname.hashCode ^
      lname.hashCode ^
      department.hashCode ^
      password.hashCode ^
      area.hashCode ^
      gender.hashCode ^
      dob.hashCode ^
      paddress.hashCode ^
      praddress.hashCode ^
      pcode.hashCode ^
      place.hashCode ^
      country.hashCode ^
      phone.hashCode ^
      email.hashCode ^
      images.hashCode ^
      imageUrl.hashCode ^
      basicsalary.hashCode ^
      houserent.hashCode ^
      medical.hashCode ^
      transport.hashCode ^
      overtime.hashCode ^
      salary.hashCode;

 @override
  String toString() {
    return 'AddEmployee{' +
        ' id: $id,' +
        ' designation: $designation,' +
        ' fname: $fname,' +
        ' lname: $lname,' +
        ' department: $department,' +
        ' password: $password,' +
        ' area: $area,' +
        ' gender: $gender,' +
        ' dob: $dob,' +
        ' paddress: $paddress,' +
        ' praddress: $praddress,' +
        ' pcode: $pcode,' +
        ' place: $place,' +
        ' country: $country,' +
        ' phone: $phone,' +
        ' email: $email,' +
        ' images: $images,' +
        ' imageUrl: $imageUrl,' +
        ' basicsalary: $basicsalary,' +
        ' houserent: $houserent,' +
        ' medical: $medical,' +
        ' transport: $transport,' +
        ' overtime: $overtime,' +
        ' salary: $salary,' +
        '}';
  }

 AddEmployee copyWith({
    int? id,
    String? designation,
    String? fname,
    String? lname,
    String? department,
    String? password,
    String? area,
    String? gender,
    String? dob,
    String? paddress,
    String? praddress,
    double? pcode,
    String? place,
    String? country,
    String? phone,
    String? email,
    String? images,
    String? imageUrl,
    double? basicsalary,
    double? houserent,
    double? medical,
    double? transport,
    double? overtime,
    double? salary,
  }) {
    return AddEmployee(
      id: id ?? this.id,
      designation: designation ?? this.designation,
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      department: department ?? this.department,
      password: password ?? this.password,
      area: area ?? this.area,
      gender: gender ?? this.gender,
      dob: dob ?? this.dob,
      paddress: paddress ?? this.paddress,
      praddress: praddress ?? this.praddress,
      pcode: pcode ?? this.pcode,
      place: place ?? this.place,
      country: country ?? this.country,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      images: images ?? this.images,
      imageUrl: imageUrl ?? this.imageUrl,
      basicsalary: basicsalary ?? this.basicsalary,
      houserent: houserent ?? this.houserent,
      medical: medical ?? this.medical,
      transport: transport ?? this.transport,
      overtime: overtime ?? this.overtime,
      salary: salary ?? this.salary,
    );
  }

 Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'designation': this.designation,
      'fname': this.fname,
      'lname': this.lname,
      'department': this.department,
      'password': this.password,
      'area': this.area,
      'gender': this.gender,
      'dob': this.dob,
      'paddress': this.paddress,
      'praddress': this.praddress,
      'pcode': this.pcode,
      'place': this.place,
      'country': this.country,
      'phone': this.phone,
      'email': this.email,
      'images': this.images,
      'imageUrl': this.imageUrl,
      'basicsalary': this.basicsalary,
      'houserent': this.houserent,
      'medical': this.medical,
      'transport': this.transport,
      'overtime': this.overtime,
      'salary': this.salary,
    };
  }

  factory AddEmployee.fromMap(Map<String, dynamic> map) {
    return AddEmployee(
      id: map['id'] as int,
      designation: map['designation'] as String,
      fname: map['fname'] as String,
      lname: map['lname'] as String,
      department: map['department'] as String,
      password: map['password'] as String,
      area: map['area'] as String,
      gender: map['gender'] as String,
      dob: map['dob'] as String,
      paddress: map['paddress'] as String,
      praddress: map['praddress'] as String,
      pcode: map['pcode'] as double,
      place: map['place'] as String,
      country: map['country'] as String,
      phone: map['phone'] as String,
      email: map['email'] as String,
      images: map['images'] as String,
      imageUrl: map['imageUrl'] as String,
      basicsalary: map['basicsalary'] as double,
      houserent: map['houserent'] as double,
      medical: map['medical'] as double,
      transport: map['transport'] as double,
      overtime: map['overtime'] as double,
      salary: map['salary'] as double,
    );
  }

//</editor-fold>
}
