import 'package:intl/intl.dart';

/// cod : "200"
/// message : 0
/// cnt : 40
/// list : [{"dt":1640433600,"main":{"temp":15.81,"feels_like":15.14,"temp_min":15.81,"temp_max":15.86,"pressure":1024,"sea_level":1024,"grnd_level":1024,"humidity":65,"temp_kf":-0.05},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":88},"wind":{"speed":2.32,"deg":283,"gust":2.14},"visibility":10000,"pop":0.31,"rain":{"3h":0.49},"sys":{"pod":"d"},"dt_txt":"2021-12-25 12:00:00"},{"dt":1640444400,"main":{"temp":15.58,"feels_like":14.92,"temp_min":15.48,"temp_max":15.58,"pressure":1024,"sea_level":1024,"grnd_level":1024,"humidity":66,"temp_kf":0.1},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":80},"wind":{"speed":1.63,"deg":309,"gust":1.97},"visibility":10000,"pop":0.27,"rain":{"3h":0.13},"sys":{"pod":"d"},"dt_txt":"2021-12-25 15:00:00"},{"dt":1640455200,"main":{"temp":14.93,"feels_like":14.25,"temp_min":14.93,"temp_max":14.93,"pressure":1023,"sea_level":1023,"grnd_level":1024,"humidity":68,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":66},"wind":{"speed":0.66,"deg":231,"gust":0.65},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-25 18:00:00"},{"dt":1640466000,"main":{"temp":14.28,"feels_like":13.59,"temp_min":14.28,"temp_max":14.28,"pressure":1024,"sea_level":1024,"grnd_level":1024,"humidity":70,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":2},"wind":{"speed":0.86,"deg":173,"gust":0.74},"visibility":10000,"pop":0.03,"sys":{"pod":"n"},"dt_txt":"2021-12-25 21:00:00"},{"dt":1640476800,"main":{"temp":13.23,"feels_like":12.57,"temp_min":13.23,"temp_max":13.23,"pressure":1023,"sea_level":1023,"grnd_level":1024,"humidity":75,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":3},"wind":{"speed":1.68,"deg":168,"gust":1.58},"visibility":10000,"pop":0.03,"sys":{"pod":"n"},"dt_txt":"2021-12-26 00:00:00"},{"dt":1640487600,"main":{"temp":12.88,"feels_like":12.21,"temp_min":12.88,"temp_max":12.88,"pressure":1023,"sea_level":1023,"grnd_level":1024,"humidity":76,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"clouds":{"all":17},"wind":{"speed":1.9,"deg":206,"gust":1.95},"visibility":10000,"pop":0.07,"sys":{"pod":"n"},"dt_txt":"2021-12-26 03:00:00"},{"dt":1640498400,"main":{"temp":13.73,"feels_like":13.01,"temp_min":13.73,"temp_max":13.73,"pressure":1024,"sea_level":1024,"grnd_level":1024,"humidity":71,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":50},"wind":{"speed":1.92,"deg":210,"gust":2.05},"visibility":10000,"pop":0.03,"sys":{"pod":"d"},"dt_txt":"2021-12-26 06:00:00"},{"dt":1640509200,"main":{"temp":16.14,"feels_like":15.4,"temp_min":16.14,"temp_max":16.14,"pressure":1024,"sea_level":1024,"grnd_level":1024,"humidity":61,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":85},"wind":{"speed":1.71,"deg":239,"gust":1.86},"visibility":10000,"pop":0.03,"sys":{"pod":"d"},"dt_txt":"2021-12-26 09:00:00"},{"dt":1640520000,"main":{"temp":17.38,"feels_like":16.66,"temp_min":17.38,"temp_max":17.38,"pressure":1022,"sea_level":1022,"grnd_level":1022,"humidity":57,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":46},"wind":{"speed":2.45,"deg":308,"gust":2.51},"visibility":10000,"pop":0.04,"sys":{"pod":"d"},"dt_txt":"2021-12-26 12:00:00"},{"dt":1640530800,"main":{"temp":16.33,"feels_like":15.66,"temp_min":16.33,"temp_max":16.33,"pressure":1022,"sea_level":1022,"grnd_level":1023,"humidity":63,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":4},"wind":{"speed":2.32,"deg":332,"gust":2.71},"visibility":10000,"pop":0.06,"sys":{"pod":"d"},"dt_txt":"2021-12-26 15:00:00"},{"dt":1640541600,"main":{"temp":15.77,"feels_like":15.1,"temp_min":15.77,"temp_max":15.77,"pressure":1023,"sea_level":1023,"grnd_level":1023,"humidity":65,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":8},"wind":{"speed":1.22,"deg":43,"gust":1.79},"visibility":10000,"pop":0.03,"sys":{"pod":"n"},"dt_txt":"2021-12-26 18:00:00"},{"dt":1640552400,"main":{"temp":15.16,"feels_like":14.45,"temp_min":15.16,"temp_max":15.16,"pressure":1023,"sea_level":1023,"grnd_level":1024,"humidity":66,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"clouds":{"all":19},"wind":{"speed":1.25,"deg":105,"gust":1.42},"visibility":10000,"pop":0.16,"sys":{"pod":"n"},"dt_txt":"2021-12-26 21:00:00"},{"dt":1640563200,"main":{"temp":14.14,"feels_like":13.49,"temp_min":14.14,"temp_max":14.14,"pressure":1022,"sea_level":1022,"grnd_level":1022,"humidity":72,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"clouds":{"all":13},"wind":{"speed":1.2,"deg":146,"gust":1.24},"visibility":10000,"pop":0.14,"sys":{"pod":"n"},"dt_txt":"2021-12-27 00:00:00"},{"dt":1640574000,"main":{"temp":13.82,"feels_like":13.16,"temp_min":13.82,"temp_max":13.82,"pressure":1022,"sea_level":1022,"grnd_level":1022,"humidity":73,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":4},"wind":{"speed":1.18,"deg":166,"gust":1.45},"visibility":10000,"pop":0.06,"sys":{"pod":"n"},"dt_txt":"2021-12-27 03:00:00"},{"dt":1640584800,"main":{"temp":13.96,"feels_like":13.37,"temp_min":13.96,"temp_max":13.96,"pressure":1022,"sea_level":1022,"grnd_level":1023,"humidity":75,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":6},"wind":{"speed":1.12,"deg":163,"gust":1.03},"visibility":10000,"pop":0.37,"rain":{"3h":0.22},"sys":{"pod":"d"},"dt_txt":"2021-12-27 06:00:00"},{"dt":1640595600,"main":{"temp":16.65,"feels_like":16.07,"temp_min":16.65,"temp_max":16.65,"pressure":1023,"sea_level":1023,"grnd_level":1023,"humidity":65,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":26},"wind":{"speed":1.02,"deg":66,"gust":1.79},"visibility":10000,"pop":0.4,"rain":{"3h":0.42},"sys":{"pod":"d"},"dt_txt":"2021-12-27 09:00:00"},{"dt":1640606400,"main":{"temp":17.39,"feels_like":16.78,"temp_min":17.39,"temp_max":17.39,"pressure":1020,"sea_level":1020,"grnd_level":1021,"humidity":61,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":36},"wind":{"speed":3.11,"deg":33,"gust":3.21},"visibility":10000,"pop":0.29,"rain":{"3h":0.34},"sys":{"pod":"d"},"dt_txt":"2021-12-27 12:00:00"},{"dt":1640617200,"main":{"temp":16.76,"feels_like":16.14,"temp_min":16.76,"temp_max":16.76,"pressure":1020,"sea_level":1020,"grnd_level":1021,"humidity":63,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":99},"wind":{"speed":3.83,"deg":36,"gust":4.67},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2021-12-27 15:00:00"},{"dt":1640628000,"main":{"temp":16.33,"feels_like":15.64,"temp_min":16.33,"temp_max":16.33,"pressure":1021,"sea_level":1021,"grnd_level":1021,"humidity":62,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":99},"wind":{"speed":3.38,"deg":36,"gust":4.37},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-27 18:00:00"},{"dt":1640638800,"main":{"temp":15.97,"feels_like":15.24,"temp_min":15.97,"temp_max":15.97,"pressure":1021,"sea_level":1021,"grnd_level":1021,"humidity":62,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":2.66,"deg":44,"gust":3.41},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-27 21:00:00"},{"dt":1640649600,"main":{"temp":15.16,"feels_like":14.4,"temp_min":15.16,"temp_max":15.16,"pressure":1020,"sea_level":1020,"grnd_level":1020,"humidity":64,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":1.05,"deg":113,"gust":1.24},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-28 00:00:00"},{"dt":1640660400,"main":{"temp":14.77,"feels_like":14.03,"temp_min":14.77,"temp_max":14.77,"pressure":1018,"sea_level":1018,"grnd_level":1019,"humidity":66,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":0.47,"deg":198,"gust":0.77},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-28 03:00:00"},{"dt":1640671200,"main":{"temp":15.24,"feels_like":14.52,"temp_min":15.24,"temp_max":15.24,"pressure":1019,"sea_level":1019,"grnd_level":1019,"humidity":65,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":100},"wind":{"speed":1.01,"deg":246,"gust":1.46},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2021-12-28 06:00:00"},{"dt":1640682000,"main":{"temp":17.48,"feels_like":16.72,"temp_min":17.48,"temp_max":17.48,"pressure":1019,"sea_level":1019,"grnd_level":1019,"humidity":55,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":82},"wind":{"speed":2.45,"deg":287,"gust":2.52},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2021-12-28 09:00:00"},{"dt":1640692800,"main":{"temp":17.77,"feels_like":16.96,"temp_min":17.77,"temp_max":17.77,"pressure":1017,"sea_level":1017,"grnd_level":1017,"humidity":52,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":74},"wind":{"speed":3.84,"deg":305,"gust":3.38},"visibility":10000,"pop":0.01,"sys":{"pod":"d"},"dt_txt":"2021-12-28 12:00:00"},{"dt":1640703600,"main":{"temp":16.67,"feels_like":15.88,"temp_min":16.67,"temp_max":16.67,"pressure":1017,"sea_level":1017,"grnd_level":1017,"humidity":57,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":{"all":16},"wind":{"speed":3.24,"deg":322,"gust":3.83},"visibility":10000,"pop":0.06,"sys":{"pod":"d"},"dt_txt":"2021-12-28 15:00:00"},{"dt":1640714400,"main":{"temp":16.09,"feels_like":15.3,"temp_min":16.09,"temp_max":16.09,"pressure":1018,"sea_level":1018,"grnd_level":1018,"humidity":59,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"clouds":{"all":14},"wind":{"speed":1.65,"deg":339,"gust":2.1},"visibility":10000,"pop":0.01,"sys":{"pod":"n"},"dt_txt":"2021-12-28 18:00:00"},{"dt":1640725200,"main":{"temp":15.57,"feels_like":14.75,"temp_min":15.57,"temp_max":15.57,"pressure":1018,"sea_level":1018,"grnd_level":1018,"humidity":60,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":41},"wind":{"speed":0.55,"deg":284,"gust":1.1},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-28 21:00:00"},{"dt":1640736000,"main":{"temp":15.09,"feels_like":14.3,"temp_min":15.09,"temp_max":15.09,"pressure":1017,"sea_level":1017,"grnd_level":1018,"humidity":63,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":70},"wind":{"speed":0.99,"deg":210,"gust":1.03},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-29 00:00:00"},{"dt":1640746800,"main":{"temp":14.9,"feels_like":14.2,"temp_min":14.9,"temp_max":14.9,"pressure":1017,"sea_level":1017,"grnd_level":1017,"humidity":67,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":1.78,"deg":231,"gust":2.14},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-29 03:00:00"},{"dt":1640757600,"main":{"temp":14.86,"feels_like":14.23,"temp_min":14.86,"temp_max":14.86,"pressure":1018,"sea_level":1018,"grnd_level":1019,"humidity":70,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":100},"wind":{"speed":2.28,"deg":217,"gust":2.94},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2021-12-29 06:00:00"},{"dt":1640768400,"main":{"temp":17.15,"feels_like":16.41,"temp_min":17.15,"temp_max":17.15,"pressure":1019,"sea_level":1019,"grnd_level":1019,"humidity":57,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":{"all":24},"wind":{"speed":2.8,"deg":234,"gust":2.45},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2021-12-29 09:00:00"},{"dt":1640779200,"main":{"temp":17.89,"feels_like":16.88,"temp_min":17.89,"temp_max":17.89,"pressure":1017,"sea_level":1017,"grnd_level":1018,"humidity":44,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":{"all":14},"wind":{"speed":2.61,"deg":250,"gust":2.61},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2021-12-29 12:00:00"},{"dt":1640790000,"main":{"temp":16.93,"feels_like":15.78,"temp_min":16.93,"temp_max":16.93,"pressure":1018,"sea_level":1018,"grnd_level":1018,"humidity":42,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":10},"wind":{"speed":1.66,"deg":228,"gust":2.21},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2021-12-29 15:00:00"},{"dt":1640800800,"main":{"temp":15.83,"feels_like":14.59,"temp_min":15.83,"temp_max":15.83,"pressure":1019,"sea_level":1019,"grnd_level":1019,"humidity":43,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"clouds":{"all":24},"wind":{"speed":2.24,"deg":165,"gust":2.53},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-29 18:00:00"},{"dt":1640811600,"main":{"temp":14.52,"feels_like":13.33,"temp_min":14.52,"temp_max":14.52,"pressure":1019,"sea_level":1019,"grnd_level":1019,"humidity":50,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":89},"wind":{"speed":3.22,"deg":131,"gust":4.03},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-29 21:00:00"},{"dt":1640822400,"main":{"temp":13.5,"feels_like":12.71,"temp_min":13.5,"temp_max":13.5,"pressure":1019,"sea_level":1019,"grnd_level":1019,"humidity":69,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":93},"wind":{"speed":3.75,"deg":135,"gust":5.07},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-30 00:00:00"},{"dt":1640833200,"main":{"temp":12.81,"feels_like":12.05,"temp_min":12.81,"temp_max":12.81,"pressure":1019,"sea_level":1019,"grnd_level":1019,"humidity":73,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":96},"wind":{"speed":3.71,"deg":140,"gust":5.08},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2021-12-30 03:00:00"},{"dt":1640844000,"main":{"temp":12.82,"feels_like":12.09,"temp_min":12.82,"temp_max":12.82,"pressure":1020,"sea_level":1020,"grnd_level":1020,"humidity":74,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":83},"wind":{"speed":3.71,"deg":143,"gust":5.21},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2021-12-30 06:00:00"},{"dt":1640854800,"main":{"temp":16.78,"feels_like":16.08,"temp_min":16.78,"temp_max":16.78,"pressure":1020,"sea_level":1020,"grnd_level":1021,"humidity":60,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":67},"wind":{"speed":3.52,"deg":134,"gust":4.52},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2021-12-30 09:00:00"}]
/// city : {"id":361058,"name":"Alexandria","coord":{"lat":31.2156,"lon":29.9553},"country":"EG","population":3811516,"timezone":7200,"sunrise":1640408195,"sunset":1640444625}

class WeatherDaysForecast {
  WeatherDaysForecast({
      this.cod, 
      this.message, 
      this.cnt, 
      this.list, 
      this.city,});

  WeatherDaysForecast.fromJson(dynamic json) {
    cod = json['cod'];
    message = json['message'];
    cnt = json['cnt'];
    if (json['list'] != null) {
      list = [];
      json['list'].forEach((v) {
        list?.add(ListData.fromJson(v));
      });
    }
    city = json['city'] != null ? City.fromJson(json['city']) : null;
  }
  String? cod;
  int? message;
  int? cnt;
  List<ListData>? list;
  City? city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cod'] = cod;
    map['message'] = message;
    map['cnt'] = cnt;
    if (list != null) {
      map['list'] = list?.map((v) => v.toJson()).toList();
    }
    if (city != null) {
      map['city'] = city?.toJson();
    }
    return map;
  }

}

/// id : 361058
/// name : "Alexandria"
/// coord : {"lat":31.2156,"lon":29.9553}
/// country : "EG"
/// population : 3811516
/// timezone : 7200
/// sunrise : 1640408195
/// sunset : 1640444625

class City {
  City({
      this.id, 
      this.name, 
      this.coord, 
      this.country, 
      this.population, 
      this.timezone, 
      this.sunrise, 
      this.sunset,});

  City.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    country = json['country'];
    population = json['population'];
    timezone = json['timezone'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }
  int? id;
  String? name;
  Coord? coord;
  String? country;
  int? population;
  int? timezone;
  int? sunrise;
  int? sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if (coord != null) {
      map['coord'] = coord?.toJson();
    }
    map['country'] = country;
    map['population'] = population;
    map['timezone'] = timezone;
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    return map;
  }

}

/// lat : 31.2156
/// lon : 29.9553

class Coord {
  Coord({
      this.lat, 
      this.lon,});

  Coord.fromJson(dynamic json) {
    lat = json['lat'];
    lon = json['lon'];
  }
  dynamic lat;
  dynamic lon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lon'] = lon;
    return map;
  }

}

/// dt : 1640433600
/// main : {"temp":15.81,"feels_like":15.14,"temp_min":15.81,"temp_max":15.86,"pressure":1024,"sea_level":1024,"grnd_level":1024,"humidity":65,"temp_kf":-0.05}
/// weather : [{"id":500,"main":"Rain","description":"light rain","icon":"10d"}]
/// clouds : {"all":88}
/// wind : {"speed":2.32,"deg":283,"gust":2.14}
/// visibility : 10000
/// pop : 0.31
/// rain : {"3h":0.49}
/// sys : {"pod":"d"}
/// dt_txt : "2021-12-25 12:00:00"

class ListData {
  ListData({
      this.dt, 
      this.main, 
      this.weather, 
      this.clouds, 
      this.wind, 
      this.visibility, 
      this.pop, 
      this.rain, 
      this.sys, 
      this.dtTxt,});

  ListData.fromJson(dynamic json) {
    var dateTimeToTimeStamp = DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000);
    dt =DateFormat('hh:MM a').format(dateTimeToTimeStamp);

    main = json['main'] != null ? Main.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    visibility = json['visibility'];
    pop = json['pop'];
    rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    dtTxt = json['dt_txt'];
  }
  dynamic dt;
  Main? main;
  List<Weather>? weather;
  Clouds? clouds;
  Wind? wind;
  int? visibility;
  dynamic pop;
  Rain? rain;
  Sys? sys;
  String? dtTxt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = dt;
    if (main != null) {
      map['main'] = main?.toJson();
    }
    if (weather != null) {
      map['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    if (clouds != null) {
      map['clouds'] = clouds?.toJson();
    }
    if (wind != null) {
      map['wind'] = wind?.toJson();
    }
    map['visibility'] = visibility;
    map['pop'] = pop;
    if (rain != null) {
      map['rain'] = rain?.toJson();
    }
    if (sys != null) {
      map['sys'] = sys?.toJson();
    }
    map['dt_txt'] = dtTxt;
    return map;
  }

}

/// pod : "d"

class Sys {
  Sys({
      this.pod,});

  Sys.fromJson(dynamic json) {
    pod = json['pod'];
  }
  String? pod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pod'] = pod;
    return map;
  }

}

/// 3h : 0.49

class Rain {
  Rain({
      this.hours,});

  Rain.fromJson(dynamic json) {
    hours = json['3h'];
  }
  dynamic hours;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['3h'] = hours;
    return map;
  }

}

/// speed : 2.32
/// deg : 283
/// gust : 2.14

class Wind {
  Wind({
      this.speed, 
      this.deg, 
      this.gust,});

  Wind.fromJson(dynamic json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }
  dynamic speed;
  int? deg;
  dynamic gust;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = speed;
    map['deg'] = deg;
    map['gust'] = gust;
    return map;
  }

}

/// all : 88

class Clouds {
  Clouds({
      this.all,});

  Clouds.fromJson(dynamic json) {
    all = json['all'];
  }
  int? all;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['all'] = all;
    return map;
  }

}

/// id : 500
/// main : "Rain"
/// description : "light rain"
/// icon : "10d"

class Weather {
  Weather({
      this.id, 
      this.main, 
      this.description, 
      this.icon,});

  Weather.fromJson(dynamic json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }
  int? id;
  String? main;
  String? description;
  String? icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['main'] = main;
    map['description'] = description;
    map['icon'] = icon;
    return map;
  }

}

/// temp : 15.81
/// feels_like : 15.14
/// temp_min : 15.81
/// temp_max : 15.86
/// pressure : 1024
/// sea_level : 1024
/// grnd_level : 1024
/// humidity : 65
/// temp_kf : -0.05

class Main {
  Main({
      this.temp, 
      this.feelsLike, 
      this.tempMin, 
      this.tempMax, 
      this.pressure, 
      this.seaLevel, 
      this.grndLevel, 
      this.humidity, 
      this.tempKf,});

  Main.fromJson(dynamic json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    seaLevel = json['sea_level'];
    grndLevel = json['grnd_level'];
    humidity = json['humidity'];
    tempKf = json['temp_kf'];
  }
  dynamic temp;
  dynamic feelsLike;
  dynamic tempMin;
  dynamic tempMax;
  int? pressure;
  int? seaLevel;
  int? grndLevel;
  int? humidity;
  dynamic tempKf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temp'] = temp;
    map['feels_like'] = feelsLike;
    map['temp_min'] = tempMin;
    map['temp_max'] = tempMax;
    map['pressure'] = pressure;
    map['sea_level'] = seaLevel;
    map['grnd_level'] = grndLevel;
    map['humidity'] = humidity;
    map['temp_kf'] = tempKf;
    return map;
  }

}