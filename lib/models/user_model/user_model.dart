import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';



@freezed
class UserModel with _$UserModel{

  factory UserModel({
    @Default('') @JsonKey(name: "token", nullable: true) String token,
        @Default('') @JsonKey(name: "error", nullable: true) String? error,
  }) = _UserModel;

  factory UserModel.fromJson (Map<String, dynamic> json)=> _$UserModelFromJson(json);

}