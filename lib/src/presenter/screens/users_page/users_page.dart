import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> users = [
      '@Pedrohernandez',
      '@FraanciscoRamirez',
      '@OlgaTanon',
      '@FranciscoPerez',
      '@IgnacioJimenez',
      '@GasparAreas',
      '@OsmaniRodriguez',
      '@ErnestoSosa',
      '@PeterPan',
      '@PedroPoll',
      '@NitaPena',
      '@ArmandoParedes',
      '@GustavoFraga',
      '@AntonioMartinez',
      '@ElizabetReyes',
      '@CaridadRojas'
    ];
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Card(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                     Text('Log Users:',style: TextStyle(fontWeight: FontWeight.bold)),
                Text('${users.length}'),
                
                  ],
                ),
              ),
             ),
               Card(
                color: Color.fromARGB(255, 225, 228, 74),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                     Text('VIP Users:',style: TextStyle(fontWeight: FontWeight.bold)),
                Text('${users.length}'),
                
                  ],
                ),
              ),
             )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  leading: const Icon(Icons.account_circle_outlined),
                  title: Text(user),
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
