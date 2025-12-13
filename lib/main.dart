// lib/main.dart - Version finale
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'core/injection/injection.dart';
import 'core/theme/app_theme.dart';
import 'presentation/pages/weather_page.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Charger les variables d'environnement
  await dotenv.load(fileName: ".env");

  // Initialiser la localisation française
  await initializeDateFormatting('fr_FR', null);

  // Configurer l'injection de dépendances
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Météo Flutter',
      theme: AppTheme.lightTheme,
      home: const WeatherPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
