// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppSetting _$AppSettingFromJson(Map<String, dynamic> json) => AppSetting(
      token: json['token'] as String?,
      authenticated: json['authenticated'] as bool? ?? false,
    )..user_name = json['user_name'] as String?;

Map<String, dynamic> _$AppSettingToJson(AppSetting instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_name': instance.user_name,
      'authenticated': instance.authenticated,
    };
