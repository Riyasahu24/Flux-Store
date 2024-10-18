// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String name;
  final String email;
  final String uid;
  final double lat;
  final double lan;

  const UserModel({
    required this.name,
    required this.email,
    required this.uid,
    required this.lat,
    required this.lan,
  });

  UserModel copyWith({
    String? name,
    String? email,
    String? uid,
    double? lat,
    double? lan,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      uid: uid ?? this.uid,
      lat: lat ?? this.lat,
      lan: lan ?? this.lan,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'uid': uid,
      'lat': lat,
      'lan': lan,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      uid: map['uid'] as String,
      lat: map['lat'] as double,
      lan: map['lan'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, uid: $uid, lat: $lat, lan: $lan)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.email == email &&
      other.uid == uid &&
      other.lat == lat &&
      other.lan == lan;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      email.hashCode ^
      uid.hashCode ^
      lat.hashCode ^
      lan.hashCode;
  }
}

