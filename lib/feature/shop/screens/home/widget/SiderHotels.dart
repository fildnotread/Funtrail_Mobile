import 'package:flutter/material.dart';

import '../../../../../common/Card/Hotel_card.dart';

class Siderhotels extends StatelessWidget {
  const Siderhotels({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('Hotel Slider'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical, // Set the direction to vertical
        children: const [
          HotelCard(),
          HotelCard(),
          HotelCard(),
        ],
      ),
    );
  }
}