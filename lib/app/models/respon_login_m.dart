// To parse this JSON data, do
//
//     final responLoginM = responLoginMFromJson(jsonString);

import 'dart:convert';

ResponLoginM responLoginMFromJson(String str) =>
    ResponLoginM.fromJson(json.decode(str));

String responLoginMToJson(ResponLoginM data) => json.encode(data.toJson());

class ResponLoginM {
  String? username;
  String? email;
  List<Role>? roles;
  String? accessToken;
  String? tokenType;

  ResponLoginM({
    this.username,
    this.email,
    this.roles,
    this.accessToken,
    this.tokenType,
  });

  factory ResponLoginM.fromJson(Map<String, dynamic> json) => ResponLoginM(
        username: json["username"],
        email: json["email"],
        roles: json["roles"] == null
            ? []
            : List<Role>.from(json["roles"]!.map((x) => Role.fromJson(x))),
        accessToken: json["accessToken"],
        tokenType: json["tokenType"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "roles": roles == null
            ? []
            : List<dynamic>.from(roles!.map((x) => x.toJson())),
        "accessToken": accessToken,
        "tokenType": tokenType,
      };
}

class Role {
  String? authority;

  Role({
    this.authority,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        authority: json["authority"],
      );

  Map<String, dynamic> toJson() => {
        "authority": authority,
      };
}
