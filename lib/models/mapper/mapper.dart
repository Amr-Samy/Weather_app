import 'package:weather_app/models/extensions.dart';
import 'package:weather_app/models/response/response.dart';
import 'package:weather_app/models/weather_model.dart';

extension WeatherResponseMapper on WeatherResponse? {
  WeatherModel toDomain() {
    return WeatherModel(name: this?.name.orEmpty() ?? EMPTY,base:  this?.base.orEmpty() ?? EMPTY,cod:this?.cod.orZero() ?? ZERO,dt: this?.dt.orZero() ?? ZERO,id: this?.id.orZero() ?? ZERO,timezone: this?.timezone.orZero() ?? ZERO );
  }
}