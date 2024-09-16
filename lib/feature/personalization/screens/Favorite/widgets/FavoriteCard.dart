// favorite_card.dart
import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  final String title;

  const FavoriteCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(Icons.favorite, color: Colors.redAccent),
            const SizedBox(width: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
