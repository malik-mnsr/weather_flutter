// lib/domain/entities/forecast.dart
import 'package:equatable/equatable.dart';

class Forecast extends Equatable {
  final DateTime date;
  final double temperature;
  final String description;
  final String iconCode;
  final int humidity;
  final double? precipitation;

  const Forecast({
    required this.date,
    required this.temperature,
    required this.description,
    required this.iconCode,
    required this.humidity,
    this.precipitation,
  });

  @override
  List<Object?> get props => [
    date,
    temperature,
    description,
    iconCode,
    humidity,
    precipitation,
  ];
}