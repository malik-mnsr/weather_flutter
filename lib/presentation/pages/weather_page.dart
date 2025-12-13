// lib/presentation/pages/weather_page.dart
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/core/injection/injection.dart';
import 'package:flutter_weather_app/presentation/cubits/weather_cubit.dart';
import 'package:flutter_weather_app/presentation/widgets/weather/current_weather_card.dart';
import 'package:flutter_weather_app/presentation/widgets/weather/forecast_list.dart';
import '../cubits/weather_state.dart';
import '../widgets/common/error_widget.dart';
import '../widgets/search/search_bar.dart';
import '../widgets/common/loading_indicator.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final TextEditingController _cityController = TextEditingController();
  late final WeatherCubit _weatherCubit;

  @override
  void initState() {
    super.initState();
    _weatherCubit = getIt<WeatherCubit>();
    // Charger Paris par défaut
    _weatherCubit.fetchWeather('Paris');
    _cityController.text = 'Paris';
  }

  @override
  void dispose() {
    _cityController.dispose();
    _weatherCubit.close();
    super.dispose();
  }

  void _handleSearch() {
    if (_cityController.text.trim().isNotEmpty) {
      _weatherCubit.fetchWeather(_cityController.text.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6A11CB),
              Color(0xFF2575FC),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Titre
                const Text(
                  '🌤️ Météo Flutter',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Découvrez la météo en temps réel',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(height: 24),

                // Barre de recherche
                SearchBar(
                  controller: _cityController,
                  onSearch: _handleSearch,
                  isLoading: false,
                ),

                const SizedBox(height: 24),

                // Contenu météo
                Expanded(
                  child: BlocBuilder<WeatherCubit, WeatherState>(
                    bloc: _weatherCubit,
                    builder: (context, state) {
                      return state.when(
                        initial: () => const LoadingIndicator(),
                        loading: () => const LoadingIndicator(),
                        loaded: (weather, forecasts) {
                          return RefreshIndicator(
                            onRefresh: () async {
                              _handleSearch();
                            },
                            child: SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: Column(
                                children: [
                                  CurrentWeatherCard(weather: weather),
                                  const SizedBox(height: 24),
                                  ForecastList(forecasts: forecasts),
                                ],
                              ),
                            ),
                          );
                        },
                        error: (message) => ErrorDisplay(
                          message: message,
                          onRetry: _handleSearch,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}