// import '../extensions.dart';
// import 'package:weather_app/models/response/response.dart';
// import 'package:weather_app/models/weather_model.dart';
//
// extension WeatherResponseMapper on WeatherResponse? {
//   WeatherModel toDomain() {
//     return WeatherModel(
//          this?.id.orZero() ?? ZERO,
//         this?.cod.orZero() ?? ZERO,
//          this?.name.orEmpty() ?? EMPTY,
//           this?.base.orEmpty() ?? EMPTY,
//          this?.timezone.orZero() ?? ZERO,
//          this?.dt.orZero() ?? ZERO,
//          this?.visibility.orZero() ?? ZERO,
//           this?.sys.toDomain()
//     );
//   }
// }
//
// extension SysResponseMapper on SysResponse? {
//   Sys toDomain() {
//     return Sys(
//          this?.id.orZero() ?? ZERO,
//          this?.type.orZero() ?? ZERO,
//           this?.country.orEmpty() ?? EMPTY,
//          this?.sunset.orZero() ?? ZERO,
//       this?.sunrise.orZero() ?? ZERO,
//     );
//   }
// }
