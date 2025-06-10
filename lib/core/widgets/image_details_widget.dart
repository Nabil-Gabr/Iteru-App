import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

class ImageDetailsWidget extends StatelessWidget {
  const ImageDetailsWidget({
    super.key,
    required this.image,
    required this.title,
    required this.tempC,
    required this.condition,
    required this.windKph,
    required this.humidity,
  });

  final String image;
  final String title;
  final String tempC;
  final String condition;
  final String windKph;
  final String humidity;

  IconData getWeatherIcon(String condition) {
    final c = condition.toLowerCase();
    if (c.contains('sun')) return Icons.wb_sunny_rounded;
    if (c.contains('cloud')) return Icons.cloud;
    if (c.contains('rain')) return Icons.umbrella;
    if (c.contains('wind')) return Icons.air;
    if (c.contains('storm')) return Icons.flash_on;
    if (c.contains('fog')) return Icons.blur_on;
    return Icons.wb_cloudy;
  }

  Color getWeatherColor(String condition) {
    final c = condition.toLowerCase();
    if (c.contains('sun')) return Colors.orange;
    if (c.contains('cloud')) return Colors.blueGrey;
    if (c.contains('rain')) return Colors.lightBlue;
    if (c.contains('wind')) return Colors.cyan;
    if (c.contains('storm')) return Colors.deepPurple;
    if (c.contains('fog')) return Colors.grey;
    return Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    final weatherIcon = getWeatherIcon(condition);
    final weatherColor = getWeatherColor(condition);

    return Stack(
      children: [
        // Background image
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(60),
          ),
          child: CachedNetworkImage(
            imageUrl: image,
            height: MediaQuery.sizeOf(context).height * 0.45,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        // Gradient overlay
        Container(
          height: MediaQuery.sizeOf(context).height * 0.45,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(60),
            ),
            gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.6), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),

        // Back button
        Positioned(
          top: 36,
          left: 16,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const CircleAvatar(
              backgroundColor: Colors.black54,
              child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
            ),
          ),
        ),

        // Title
        Positioned(
          top: 40,
          left: 25,
          right: 0,
          child: Center(
            child: Text(
              title,
              
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [Shadow(blurRadius: 8, color: Colors.black)],
              ),
            ),
          ),
        ),

        // Weather Info Card
        Positioned(
          bottom: 24,
          left: 24,
          right: 24,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white.withOpacity(0.3)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _WeatherItem(icon: weatherIcon, label: "$tempC°C", title: "Temp", color: weatherColor),
                    _WeatherItem(icon: Icons.water_drop_rounded, label: "$humidity%", title: "Humidity", color: Colors.blue),
                    _WeatherItem(icon: Icons.air_rounded, label: "$windKph km/h", title: "Wind", color: Colors.teal),
                    _WeatherItem(icon: Icons.info_outline, label: condition, title: "Status", color: weatherColor),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _WeatherItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String title;
  final Color color;

  const _WeatherItem({
    required this.icon,
    required this.label,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color)),
        Text(title, style: const TextStyle(fontSize: 12, color: Colors.white)),
      ],
    );
  }
}


