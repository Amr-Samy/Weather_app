import '../extensions.dart';
import 'package:weather_app/models/response/response.dart';
import 'package:weather_app/models/weather_model.dart';

extension WeatherResponseMapper on WeatherResponse? {
  WeatherNewModel toDomain() {
    return WeatherNewModel(
        this?.id.orZero() ?? ZERO,
        this?.cod.orZero() ?? ZERO,
        this?.name.orEmpty() ?? EMPTY,
        this?.base.orEmpty() ?? EMPTY,
        this?.timezone.orZero() ?? ZERO,
        this?.dt.orZero() ?? ZERO,
        this?.visibility.orZero() ?? ZERO,
        this?.sys.toDomain()
    );
  }
}

extension SysResponseMapper on SysResponse? {
  SysNewModel toDomain() {
    return SysNewModel(
      this?.country.orEmpty() ?? EMPTY,
      this?.sunset.orZero() ?? ZERO,
      this?.sunrise.orZero() ?? ZERO,
    );
  }
}
