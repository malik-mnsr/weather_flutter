
import '../../domain/entities/Forecast.dart';
import '../models/forecast_response.dart';

class ForecastMapper {
  List<Forecast> toEntityList(ForecastResponse response) {
    final forecasts = <Forecast>[];

    // On regroupe par jour
    final dailyForecasts = <DateTime, ForecastItem>{};

    for (final item in response.list) {
      final date = DateTime.parse(item.dateText).toLocal();
      final day = DateTime(date.year, date.month, date.day);

      // On prend seulement une prévision par jour (midi)
      if (date.hour == 12 || !dailyForecasts.containsKey(day)) {
        dailyForecasts[day] = item;
      }

      // On limite à 4 jours
      if (dailyForecasts.length >= 4) break;
    }

    for (final entry in dailyForecasts.entries) {
      final item = entry.value;
      final weatherInfo = item.weather.first;

      forecasts.add(Forecast(
        date: DateTime.fromMillisecondsSinceEpoch(item.timestamp * 1000),
        temperature: item.main.temp,
        description: weatherInfo.description,
        iconCode: weatherInfo.icon,
        humidity: item.main.humidity,
      ));
    }

    return forecasts;
  }
}