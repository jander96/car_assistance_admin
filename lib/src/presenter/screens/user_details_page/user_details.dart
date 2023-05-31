import 'package:flutter/material.dart';
class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final String user = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text('User')),
      body: Center(child: Text('user details de $user')),
    );
  }
}