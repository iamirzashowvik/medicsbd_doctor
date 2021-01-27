// To parse this JSON data, do
//
//     final loginApi = loginApiFromJson(jsonString);

import 'dart:convert';

LoginApi loginApiFromJson(String str) => LoginApi.fromJson(json.decode(str));

String loginApiToJson(LoginApi data) => json.encode(data.toJson());

class LoginApi {
  LoginApi({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
  });

  String accessToken;
  String tokenType;
  int expiresIn;

  factory LoginApi.fromJson(Map<String, dynamic> json) => LoginApi(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_in": expiresIn,
      };
}

LoginApiFail loginApiFailFromJson(String str) =>
    LoginApiFail.fromJson(json.decode(str));

String loginApiFailToJson(LoginApiFail data) => json.encode(data.toJson());

class LoginApiFail {
  LoginApiFail({
    this.status,
    this.code,
    this.message,
  });

  bool status;
  int code;
  String message;

  factory LoginApiFail.fromJson(Map<String, dynamic> json) => LoginApiFail(
        status: json["status"],
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
      };
}
