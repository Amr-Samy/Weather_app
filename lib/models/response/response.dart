import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';


@JsonSerializable()
class WeatherResponse {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "cod")
  int cod;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "base")
  String base;
  @JsonKey(name: "timezone")
  int timezone;
  @JsonKey(name: "dt")
  int dt;
  @JsonKey(name: "visibility")
  int visibility;
  @JsonKey(name: "sys")
  SysResponse sys;

  WeatherResponse(this.id, this.cod, this.name, this.base, this.timezone, this.dt, this.visibility, this.sys);

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}

@JsonSerializable()
class SysResponse {
  // @JsonKey(name: "type")
  // dynamic type;
  // @JsonKey(name: "id")
  // dynamic id;
  @JsonKey(name: "country")
  String country;
  @JsonKey(name: "sunrise")
  int sunrise;
  @JsonKey(name: "sunset")
  int sunset;
  SysResponse(this.country, this.sunset,this.sunrise);
  factory SysResponse.fromJson(Map<String, dynamic> json) => _$SysResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SysResponseToJson(this);
}

