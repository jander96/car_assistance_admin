import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  const LogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String affiliate =
        ModalRoute.of(context)?.settings.arguments as String? ?? "";
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Registro total:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 8,
                    ),
                    Text('${affiliate.length} servicios ')
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: affiliate.length,
                    itemBuilder: (context, index) {
                     return ListTile(
                        title: Text("User email@gmail.com"),
                        subtitle: Text('01:06:23 11:00:00'),
                      );
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
