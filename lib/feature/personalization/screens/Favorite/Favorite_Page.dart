import 'package:flutter/material.dart';

import 'widgets/FavoriteCard.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final List<String> favoriteItems = [
      'Favorite Item 1',
      'Favorite Item 2',
      'Favorite Item 3',
      'Favorite Item 4',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return FavoriteCard(
            title: favoriteItems[index],
          );
        },
      ),
    );
  }
}