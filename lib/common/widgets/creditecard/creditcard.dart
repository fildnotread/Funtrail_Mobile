import 'package:Funtrails/utils/device/device_utility.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class creditecard extends StatelessWidget {
  const creditecard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return SizedBox(
      height: 250,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 19),
          itemBuilder: (ctx, index) {
            return Container(
              width: 400,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      TColors.ligh_blue,
                      TColors.dark_blue,
                      TColors.darkest_blue,
                      TColors.ligh_blue,
                      TColors.dark_blue,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Credit Card',
                        style: TextStyle(
                            color: dark ? TColors.white : TColors.dark,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: dark ? TColors.white : TColors.dark,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.circle,
                            color: dark ? TColors.white : TColors.dark,
                            size: 14),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Iconsax.card_edit,
                          size: 30,
                          color: dark ? TColors.white : TColors.dark,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text("MasterCard",
                          style: TextStyle(
                            fontSize: 20,
                            color: dark ? TColors.white : TColors.dark,
                          )),
                      const SizedBox(width: 10),
                      Text("****",
                          style: TextStyle(
                            color: dark ? TColors.white : TColors.dark,
                          )),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("1617  1617  1617 1617",
                            style: TextStyle(
                              fontSize: 20,
                              color: dark ? TColors.white : TColors.dark,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("8272",
                            style: TextStyle(
                              fontSize: 20,
                              color: dark ? TColors.white : TColors.dark,
                            )),
                      ),
                      const Spacer(),
                      Text("8272",
                          style: TextStyle(
                            fontSize: 20,
                            color: dark ? TColors.white : TColors.dark,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("User125435",
                            style: TextStyle(
                              fontSize: 20,
                              color: dark ? TColors.white : TColors.dark,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
