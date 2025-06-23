import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'config/gemini_config.dart';
import 'widget/main_navigation.dart';

void main() {
  // Initialisation de Gemini
  Gemini.init(apiKey: GeminiConfig.apiKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppSchool',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainNavigation(),
    );
  }
}
