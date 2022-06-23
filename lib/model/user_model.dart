import 'dart:convert';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.country,
  });

  String country;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
      };
}
