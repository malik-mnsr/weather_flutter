// lib/presentation/widgets/weather/weather_icon.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeatherIcon extends StatelessWidget {
  final String iconCode;
  final double size;

  const WeatherIcon({
    super.key,
    required this.iconCode,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    final icon = _getIconFromCode(iconCode);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.primary.withOpacity(0.1),
            Theme.of(context).colorScheme.secondary.withOpacity(0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        icon.icon,
        size: size,
        color: icon.color,
      ),
    );
  }

  ({IconData icon, Color color}) _getIconFromCode(String code) {
    if (code.contains('01')) {
      return (icon: FontAwesomeIcons.sun, color: Colors.orange);
    } else if (code.contains('02')) {
      return (icon: FontAwesomeIcons.cloudSun, color: Colors.orangeAccent);
    } else if (code.contains('03') || code.contains('04')) {
      return (icon: FontAwesomeIcons.cloud, color: Colors.grey);
    } else if (code.contains('09') || code.contains('10')) {
      return (icon: FontAwesomeIcons.cloudRain, color: Colors.blue);
    } else if (code.contains('11')) {
      return (icon: FontAwesomeIcons.bolt, color: Colors.yellow);
    } else if (code.contains('13')) {
      return (icon: FontAwesomeIcons.snowflake, color: Colors.lightBlue);
    } else if (code.contains('50')) {
      return (icon: FontAwesomeIcons.smog, color: Colors.grey);
    } else {
      return (icon: FontAwesomeIcons.cloud, color: Colors.grey);
    }
  }
}


