import 'package:flutter/material.dart';
class EditionPage extends StatelessWidget {
  const EditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Affiliate'),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.cloud_upload_outlined))],

        ),
      body: Center(child: Text('edition')),
    );
  }
}