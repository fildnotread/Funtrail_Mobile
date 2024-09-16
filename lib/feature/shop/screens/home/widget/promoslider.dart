import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shap/containers/circle_contianer.dart'; // Fix path if necessary
import '../../../../../common/widgets/image/imageT_round.dart'; // Fix path if necessary
import '../../../../../utils/constants/colors.dart'; // Fix path if necessary
import '../../../../../utils/constants/image_strings.dart'; // Ensure this file contains the TImages class

class Tpromoslider extends StatefulWidget {
  const Tpromoslider({super.key});

  @override
  _TpromosliderState createState() => _TpromosliderState();
}

class _TpromosliderState extends State<Tpromoslider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Static list of images from the TImages class
    final List<String> staticBanners = [
      TImages.promoBanner1, // Ensure that promoBanner1 to promoBanner5 exist in TImages
      TImages.promoBanner2,
      TImages.promoBanner3,
      TImages.promoBanner4,
      TImages.promoBanner5,
    ];

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.9,
            aspectRatio: 2.1, // Adjust this to make the image center big
            autoPlay: true,
            enlargeCenterPage: true, // Enable auto-scroll
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: staticBanners
              .map((imageUrl) => TroundImage(
                    Imageurl: imageUrl,
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 16.0, // Adjust this value as needed
        ),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(staticBanners.length, (i) {
              return Tcircleercontainer(
                width: 15,
                height: 5,
                margin: const EdgeInsets.only(right: 10),
                backgroundcolor: i == _currentIndex
                    ? TColors.primary // Active indicator color
                    : TColors.grey,    // Inactive indicator color
              );
            }),
          ),
        ),
      ],
    );
  }
}
