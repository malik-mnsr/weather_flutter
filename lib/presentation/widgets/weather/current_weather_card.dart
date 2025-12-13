
// lib/presentation/widgets/weather/current_weather_card.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../domain/entities/Weather.dart';
import 'weather_icon.dart';
import 'weather_info_item.dart';

class CurrentWeatherCard extends StatelessWidget {
  final Weather weather;

  const CurrentWeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // En-tête avec ville et date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      weather.cityName,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat('EEEE d MMMM yyyy', 'fr_FR')
                          .format(weather.dateTime),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                WeatherIcon(iconCode: weather.iconCode),
              ],
            ),

            const SizedBox(height: 24),

            // Température et description
            Text(
              '${weather.temperature.toStringAsFixed(1)}°C',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w300,
              ),
            ),

            Text(
              weather.description.toUpperCase(),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
                letterSpacing: 1.2,
              ),
            ),

            const SizedBox(height: 32),

            // Informations détaillées
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WeatherInfoItem(
                  icon: Icons.water_drop,
                  label: 'Humidité',
                  value: '${weather.humidity}%',
                ),
                WeatherInfoItem(
                  icon: Icons.air,
                  label: 'Vent',
                  value: '${weather.windSpeed.toStringAsFixed(1)} m/s',
                ),
                WeatherInfoItem(
                  icon: Icons.cloud,
                  label: 'Conditions',
                  value: weather.iconCode,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}