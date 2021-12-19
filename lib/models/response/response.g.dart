// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      json['id'] as int,
      json['cod'] as int,
      json['name'] as String,
      json['base'] as String,
      json['timezone'] as int,
      json['dt'] as int,
      json['visibility'] as int,
      SysResponse.fromJson(json['sys'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cod': instance.cod,
      'name': instance.name,
      'base': instance.base,
      'timezone': instance.timezone,
      'dt': instance.dt,
      'visibility': instance.visibility,
      'sys': instance.sys,
    };

SysResponse _$SysResponseFromJson(Map<String, dynamic> json) => SysResponse(
      json['id'] as int,
      json['type'] as int,
      json['country'] as String,
      json['sunset'] as int,
      json['sunrise'] as int,
    );

Map<String, dynamic> _$SysResponseToJson(SysResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
