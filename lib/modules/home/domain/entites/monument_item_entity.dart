class MonumentEntity {
  final String id;
  final String name;
  final String location;
  final String description;
  final List<String> images;
  final String coverPicture;
  final Weather weather;
  final Tickets tickets;

  MonumentEntity({
    required this.id,
    required this.name,
    required this.location,
    required this.description,
    required this.images,
    required this.coverPicture,
    required this.weather,
    required this.tickets,
  });
}

class Weather {
  final String tempC;
  final String condition;
  final String windKph;
  final String humidity;

  Weather({
    required this.tempC,
    required this.condition,
    required this.windKph,
    required this.humidity,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      tempC: (json['temp_c'] as num?)?.toString() ?? 'N/A',
      condition: json['condition'] ?? '',
      windKph: (json['wind_kph'] as num?)?.toString() ?? 'N/A',
      humidity: (json['humidity'] as num?)?.toString() ?? 'N/A',
    );
  }
}


class Tickets {
  final Map<String, String> prices;

  Tickets({required this.prices});

  factory Tickets.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return Tickets(prices: {});
    }
    final parsed = <String, String>{};
    json.forEach((key, value) {
      if (value != null) {
        parsed[key] = value.toString();
      }
    });
    return Tickets(prices: parsed);
  }
}

