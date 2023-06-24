import 'package:coaches_app_testing_code/config/app_routes.dart';
import 'package:coaches_app_testing_code/core/dependency_injection.dart';
import 'package:flutter/material.dart';

void main() {
  initApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),  //?? for test
      initialRoute: AppRoutes.homeRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
