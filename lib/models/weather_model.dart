import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
class WeatherNewModel {
  int id;
  int cod;
  String name;
  String base;
  int timezone;
  int dt;
  int visibility;
  SysNewModel? sys;

  WeatherNewModel(
    this.id,
    this.cod,
    this.name,
    this.base,
    this.timezone,
    this.dt,
    this.visibility,
    this.sys,
  );
}

class SysNewModel{

  String country;
  int sunrise;
  int sunset;

  SysNewModel(

    this.country,
    this.sunset,
    this.sunrise,
  );
}

class WeatherModel {
  WeatherModel({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });
  late final Coord coord;
  late final List<Weather> weather;
  late final dynamic base;
  late final Main main;
  late final dynamic visibility;
  late final Wind wind;
  late final Clouds clouds;
  late final dynamic dt;
  late final Sys sys;
  late final dynamic timezone;
  late final dynamic id;
  late final dynamic name;
  late final dynamic cod;

  WeatherModel.fromJson(Map<dynamic, dynamic> json){
    coord = Coord.fromJson(json['coord']);
    weather = List.from(json['weather']).map((e)=>Weather.fromJson(e)).toList();
    base = json['base'];
    main = Main.fromJson(json['main']);
    visibility = json['visibility'];
    wind = Wind.fromJson(json['wind']);
    clouds = Clouds.fromJson(json['clouds']);
    // Mon, 10 August 11:25 pm
    dt =DateFormat('EE, dd MMMM hh:mm a	').format(DateTime.now());
    sys = Sys.fromJson(json['sys']);
    timezone = json['timezone'];
    id = json['id'];
    name = json['name'].toString().toUpperCase();
    cod = json['cod'];
  }
}

class Coord {
  Coord({
    required this.lon,
    required this.lat,
  });
  late final dynamic lon;
  late final dynamic lat;

  Coord.fromJson(Map<dynamic, dynamic> json){

    lon = json['lon'];
    lat = json['lat'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['lon'] = lon;
    _data['lat'] = lat;
    return _data;
  }
}

class Weather {
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
  late final dynamic id;
  late final dynamic main;
  late final dynamic description;
  late final dynamic icon;

  Weather.fromJson(Map<dynamic, dynamic> json){
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = "http://openweathermap.org/img/wn/${json['icon']}.png";
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['id'] = id;
    _data['main'] = main;
    _data['description'] = description;
    _data['icon'] = icon;
    return _data;
  }
}

class Main {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });
  late final dynamic temp;
  late final dynamic feelsLike;
  late final dynamic tempMin;
  late final dynamic tempMax;
  late final dynamic pressure;
  late final dynamic humidity;

  Main.fromJson(Map<dynamic, dynamic> json){
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    humidity = json['humidity'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['temp'] = temp;
    _data['feels_like'] = feelsLike;
    _data['temp_min'] = tempMin;
    _data['temp_max'] = tempMax;
    _data['pressure'] = pressure;
    _data['humidity'] = humidity;
    return _data;
  }
}

class Wind {
  Wind({
    required this.speed,
    required this.deg,
  });
  late final dynamic speed;
  late final dynamic deg;

  Wind.fromJson(Map<dynamic, dynamic> json){
    speed = json['speed'];
    deg = json['deg'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['speed'] = speed;
    _data['deg'] = deg;
    return _data;
  }
}

class Clouds {
  Clouds({
    required this.all,
  });
  late final dynamic all;

  Clouds.fromJson(Map<dynamic, dynamic> json){
    all = json['all'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['all'] = all;
    return _data;
  }
}

class Sys {
  Sys({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunriseWithoutFormat,
    required this.sunset,
    required this.sunsetWithoutFormat,
  });
  late final dynamic type;
  late final dynamic id;
  late final dynamic country;
  late final  dynamic  sunrise;
  late final dynamic  sunset;
  late final dynamic  sunsetWithoutFormat;
  late final dynamic  sunriseWithoutFormat;

  Sys.fromJson(Map<dynamic, dynamic> json){
    type = json['type'];
    id = json['id'];
    country = json['country'];
    var dateSunriseToTimeStamp = DateTime.fromMillisecondsSinceEpoch(json['sunrise'] * 1000);
    var dateSunsetToTimeStamp = DateTime.fromMillisecondsSinceEpoch(json['sunset'] * 1000);
    sunrise =DateFormat('hh:MM a').format(dateSunriseToTimeStamp);
    sunset =DateFormat('hh:MM a').format(dateSunsetToTimeStamp);
    sunsetWithoutFormat = dateSunsetToTimeStamp;
    sunriseWithoutFormat = dateSunriseToTimeStamp;

  }

  Map<dynamic, dynamic> toJson() {
    final _data = <dynamic, dynamic>{};
    _data['type'] = type;
    _data['id'] = id;
    _data['country'] = country;
    _data['sunrise'] = sunrise;
    _data['sunset'] = sunset;
    return _data;
  }
}