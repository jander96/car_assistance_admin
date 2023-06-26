
import 'package:car_assistance_admin/route_names.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Admin app',
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Administration'),
        ),
        
      ),
      initialRoute: RouteName.initialRoute,
      routes: appRoutes
    );
  }
}