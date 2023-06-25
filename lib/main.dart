import 'package:flutter/material.dart';
import 'package:hamburger_app_ui/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.teal, centerTitle: true),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
