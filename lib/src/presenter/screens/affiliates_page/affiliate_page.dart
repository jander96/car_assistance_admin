import 'package:flutter/material.dart';

import '../../delegates/search_delegate_affiliate.dart';

class AffiliatesPage extends StatelessWidget {
  const AffiliatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> affiliates = [
      'Motors Taller',
      'MotorsWorks',
      'Repair All',
      'Motors Solution',
      'AutoRepair',
      'YourCar',
      'CarHelp',
      'CarTaller',
      'Motors Taller',
      'MotorsWorks',
      'Repair All',
      'Motors Solution',
      'AutoRepair',
      'YourCar',
      'CarHelp',
      'CarTaller'
    ];
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Total:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 16,),
                      Text('${affiliates.length} affiliates'),
                    ],
                  ),
                  GestureDetector(
                    child: const Icon(Icons.search),
                    onTap: () {
                      showSearch(
                          context: context,
                          delegate: SearchAffiliateDelegate(
                            affiliates: [],
                          )).then((affiliate) {
                        if (affiliate != null){
                          Navigator.pushNamed(context, 'affiliate_editor',
                              arguments: affiliate);}
                      });
                    },
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: affiliates.length,
                itemBuilder: (context, index) {
                  final affiliate = affiliates[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.car_repair),
                        title: Text(affiliate),
                        subtitle: Text('address del affiliado'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                        onTap: () {
                          Navigator.pushNamed(context, 'affiliate_editor',
                              arguments: affiliate);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, 'affiliate_editor');
            }));
  }
}
