class UserModel {
  String? uid;
  String email;
  String name;
  String password;
  UserModel({this.uid, required this.email, required this.name,required this.password});
  Map<String, dynamic> toMap() {
    return {'uid': uid, 'email': email, 'name':name,"password": password};
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      password: map['password'],
    );
  }
}
