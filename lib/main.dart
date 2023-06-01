
import 'package:car_assistance_admin/src/presenter/screens/edition_page/edition_page.dart';
import 'package:car_assistance_admin/src/presenter/screens/logger_page/log_page.dart';
import 'package:car_assistance_admin/src/presenter/screens/nav_host.dart';
import 'package:car_assistance_admin/src/presenter/screens/user_details_page/user_details.dart';
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
      initialRoute: 'main',
      routes: {
        'main':(context) => const NavHost(),
        'affiliate_editor':(context) => const EditionPage(),
        'user_details':(context) => const UserDetails(),
        'log':(context) => const LogPage()
      },
    );
  }
}