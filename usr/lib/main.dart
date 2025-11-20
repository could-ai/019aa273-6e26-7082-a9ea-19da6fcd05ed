import 'package:flutter/material.dart';
import 'cv_screen.dart';
import 'cv_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Curriculum Vitae',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
        fontFamily: 'Roboto', // Usando fuente por defecto, pero preparado para cambiar
      ),
      // Definimos las rutas asegurando que '/' exista
      initialRoute: '/',
      routes: {
        '/': (context) => CVScreen(data: placeholderCV),
      },
    );
  }
}
