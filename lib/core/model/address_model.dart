// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AddressModel {
  final String uid;
  final String addressLaneOne;
  final String? addressLaneTwo;
  final String city;
  final String state;
  final String country;
  final String pincode;
  final String userUid;
  const AddressModel({
    required this.uid,
    required this.addressLaneOne,
    this.addressLaneTwo,
    required this.city,
    required this.state,
    required this.country,
    required this.pincode,
    required this.userUid,
  });

  AddressModel copyWith({
    String? uid,
    String? addressLaneOne,
    String? addressLaneTwo,
    String? city,
    String? state,
    String? country,
    String? pincode,
    String? userUid,
  }) {
    return AddressModel(
      uid: uid ?? this.uid,
      addressLaneOne: addressLaneOne ?? this.addressLaneOne,
      addressLaneTwo: addressLaneTwo ?? this.addressLaneTwo,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      userUid: userUid ?? this.userUid,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'addressLaneOne': addressLaneOne,
      'addressLaneTwo': addressLaneTwo,
      'city': city,
      'state': state,
      'country': country,
      'pincode': pincode,
      'userUid': userUid,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      uid: map['uid'] as String,
      addressLaneOne: map['addressLaneOne'] as String,
      addressLaneTwo: map['addressLaneTwo'] as String,
      city: map['city'] as String,
      state: map['state'] as String,
      country: map['country'] as String,
      pincode: map['pincode'] as String,
      userUid: map['userUid'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AddressModel(uid: $uid, addressLaneOne: $addressLaneOne, addressLaneTwo: $addressLaneTwo, city: $city, state: $state, country: $country, pincode: $pincode, userUid: $userUid)';
  }

  @override
  bool operator ==(covariant AddressModel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.addressLaneOne == addressLaneOne &&
        other.addressLaneTwo == addressLaneTwo &&
        other.city == city &&
        other.state == state &&
        other.country == country &&
        other.pincode == pincode &&
        other.userUid == userUid;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        addressLaneOne.hashCode ^
        addressLaneTwo.hashCode ^
        city.hashCode ^
        state.hashCode ^
        country.hashCode ^
        pincode.hashCode ^
        userUid.hashCode;
  }
}
