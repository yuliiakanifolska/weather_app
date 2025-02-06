import 'package:flutter/material.dart';
import 'package:weatherforecast_app/start_screen.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(context) {
    Widget screenWidget = const StartScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
           color: Color(0xFF2A2A2A),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
