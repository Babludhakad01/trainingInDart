class Weather {
  final String description;
  final double temp;
  final String city;

  Weather({required this.description, required this.temp, required this.city});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      description: json['weather'][0]['description'],
      temp: (json['main']['temp'] as num).toDouble(),
      city: json['name'],
    );
  }
}

void main() {
  Map<String, dynamic> jsonData = {
    "weather": [
      {'Description': 'Clear Sky'},
    ],
    "main": {"temp": 30.05},
    "name": "Delhi",
  };

  Weather weather = Weather.fromJson(jsonData);
}
