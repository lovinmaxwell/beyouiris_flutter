// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'setting.g.dart';

@JsonSerializable()
class AppSetting {
  AppSetting({this.token, this.authenticated = false});

  String? token;
  String? user_name;
  bool authenticated;

  factory AppSetting.fromJson(Map<String, dynamic> json) => _$AppSettingFromJson(json);
  Map<String, dynamic> toJson() => _$AppSettingToJson(this);
}
