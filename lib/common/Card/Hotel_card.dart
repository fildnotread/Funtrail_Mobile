import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_strings.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row with large image on the left and two small images on the right
          // Row with large image on the left and two small images on the right
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5), // Padding for the large image
                child: Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    child: Image.network(
                      'https://www.yammagazine.com/wp-content/uploads/2017/06/IMG_9948feature.jpg',
                      height: 210,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // Two smaller images stacked on the right
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        'https://www.yammagazine.com/wp-content/uploads/2017/06/IMG_9948feature.jpg',
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        'https://www.yammagazine.com/wp-content/uploads/2017/06/IMG_9948feature.jpg',
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Padding for Hotel Info
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hotel Name',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text('Location: City, Country',
                    style:
                        TextStyle(color: dark ? TColors.white : TColors.dark)),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$120/night',
                      style: TextStyle(
                        fontSize: 16,
                        color: dark ? TColors.white : TColors.dark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(TTexts.explore),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
