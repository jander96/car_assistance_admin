import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> users = [
      'Pedro hernandez',
      'Fraancisco Ramirez',
      'Olga Tanon',
      'Francisco Perez',
      'Ignacio Jimenez',
      'Gaspar Areas',
      'Osmani Rodriguez',
      'Ernesto Sosa',
      'Peter Pan',
      'Pedro Poll',
      'Nita Pena',
      'Armando Paredes',
      'Gustavo Fraga',
      'Antonio Martinez',
      'Elizabet Reyes',
      'Caridad Rojas'
    ];
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Users:',style: TextStyle(fontWeight: FontWeight.bold)),
              Text('${users.length}'),
              Text('VIP Users:',style: TextStyle(fontWeight: FontWeight.bold)),
              Text('${users.length}')
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  leading: Icon(Icons.account_circle_outlined),
                  title: Text(user),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pushNamed(context, 'user_details',arguments: user);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
