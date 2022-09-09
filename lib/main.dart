import 'package:copa_mundo_app/routes/routes.dart';
import 'package:copa_mundo_app/routes/routes_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Copa do Mundo 2022',
        theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
        initialRoute: Routes.splashscreen,
        onGenerateRoute: (settings) =>
            RoutesGenerator().generateRoutes(settings));
  }
}
