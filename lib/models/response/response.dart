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


  WeatherResponse({
    required this.id,
    required this.cod,
    required this.name,
    required this.base,
    required this.timezone,
    required this.dt});
  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}