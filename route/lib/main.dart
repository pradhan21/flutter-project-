import 'package:flutter/material.dart';
import 'package:route/routes.dart';
import 'nameroutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:RouteName.home_route,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

