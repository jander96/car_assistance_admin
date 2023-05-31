import 'package:car_assistance_admin/src/presenter/screens/users_page/users_page.dart';
import 'package:flutter/material.dart';

import 'affiliates_page/affiliate_page.dart';


class NavHost extends StatefulWidget {
  const NavHost({super.key});

  @override
  State<NavHost> createState() => _NavHostState();
}

class _NavHostState extends State<NavHost> {
  var selectedIndex = 0;
  final bottomNavigationOptions = <int, Widget>{
    0: const AffiliatesPage(),
    1: const UsersPage(),
  };
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:
          SafeArea(child: bottomNavigationOptions[selectedIndex] ?? const AffiliatesPage()),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedIndex = value;
          setState(() {
            
          });
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list_rounded), label: "Affiliates"),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_sharp), label: "Users"),
        ],
      ),
    );
  }
}
