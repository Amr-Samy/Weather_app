// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      id: json['id'] as int,
      cod: json['cod'] as int,
      name: json['name'] as String,
      base: json['base'] as String,
      timezone: json['timezone'] as int,
      dt: json['dt'] as int,
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cod': instance.cod,
      'name': instance.name,
      'base': instance.base,
      'timezone': instance.timezone,
      'dt': instance.dt,
    };
