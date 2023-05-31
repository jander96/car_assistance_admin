
import 'package:flutter/material.dart';

import '../models/affiliate_model.dart';



class SearchAffiliateDelegate extends SearchDelegate<Affiliate?> {
  final List<Affiliate> affiliates;

  SearchAffiliateDelegate({required this.affiliates});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
         IconButton(
                onPressed: () => query = '', icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back_ios_new_rounded));
  }

  @override
  Widget buildResults(BuildContext context) {
   final listOfAffiliates = affiliates
        .where((affiliate) => affiliate.name.contains(query))
        .toList();
    return ListView.builder(
        itemCount: listOfAffiliates.length,
        itemBuilder: (context, index) {
          final affiliate = listOfAffiliates[index];

          return GestureDetector(
              child: ListTile(
                title: Text(affiliate.name),
                subtitle: Text(affiliate.address),
              ),
              onTap: () {
                close(context, affiliate);
              });
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final listOfAffiliates = affiliates
        .where((affiliate) => affiliate.name.contains(query))
        .toList();
    return ListView.builder(
        itemCount: listOfAffiliates.length,
        itemBuilder: (context, index) {
          final affiliate = listOfAffiliates[index];

          return GestureDetector(
              child: ListTile(
                title: Text(affiliate.name),
                subtitle: Text(affiliate.address),
              ),
              onTap: () {
                close(context, affiliate);
              });
        });
  }
}
