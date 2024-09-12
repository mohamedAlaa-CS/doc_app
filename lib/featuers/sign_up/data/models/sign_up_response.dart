import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_response.g.dart';
@JsonSerializable()
class SignUpRespose {
  final String message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  SignUpRespose({
    required this.message,
    required this.userData,
    required this.status,
    required this.code,
  });

  factory SignUpRespose.fromJson(Map<String, dynamic> json) =>
      _$SignUpResposeFromJson(json);
}

@JsonSerializable()
class UserData {
  final String token;
  @JsonKey(name: 'username')
  final String userName;

  UserData({
    required this.token,
    required this.userName,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
