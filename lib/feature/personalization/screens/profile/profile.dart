import 'package:Funtrails/common/widgets/appbar/appbar.dart';
import 'package:Funtrails/common/widgets/image/Tcircular_image.dart';
import 'package:Funtrails/common/widgets/text/section_heading.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/shimmer/Shimmer.dart';
import '../../../../utils/constants/image_strings.dart';
import 'Widget/profilemenu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Usercontroller.instance;
    return Scaffold(
      appBar: const Tappbar(
        title: Text('Profile'),
        showbackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                 const Tcircularimage(
                  image: TImages.user, // Use a static image
                  width: 200,
                  height: 200,
                ),
                // Obx(() {
                //   final networkimage = controller.user.value.profilePicture;
                //   final image =
                //       networkimage.isNotEmpty ? networkimage : TImages.user;

                //   return controller.imageupload.value
                //       ? TshimmerEffect(
                //           width: 200,
                //           height: 200,
                //           radius: 200,
                //         )
                //       : Tcircularimage(
                //           image: image,
                //           width: 200,
                //           height: 200,
                //           isNetworking: networkimage.isNotEmpty,
                //         );
                // }),
                TextButton(
                  onPressed: () => {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Edited',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                          width:
                              8.0), // Add some space between the text and the icon
                      const Icon(
                        Iconsax.edit,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                const Tsectionheading(
                  title: 'Profile Information',
                  showactionbtn: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                profilemenu(
                  title: 'Name :',
                  // value: controller.user.value.fullname,
                  onpressed: () => {},
                ),
                profilemenu(
                  title: 'Username :',
                  // value: controller.user.value.username,
                  onpressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                const Tsectionheading(
                  title: 'Personal  Information',
                  showactionbtn: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                profilemenu(
                  title: 'User ID :',
                  // value: controller.user.value.id,
                  onpressed: () {},
                  iconss: Iconsax.copy_success,
                ),
                profilemenu(
                  title: 'E-mail :',
                  // value: controller.user.value.email,
                  onpressed: () {},
                ),
                profilemenu(
                  title: 'Phone Number :',
                  // value: controller.user.value.phonenumber,
                  onpressed: () {},
                ),
                profilemenu(
                  title: 'Gender :',
                  // value: 'Male',
                  onpressed: () {},
                ),
                profilemenu(
                  title: 'Date of Birth :',
                  // value: '10 Oct 1969',
                  onpressed: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Center(
                  child: TextButton(
                    // onPressed: () => controller.deleteAccountWarningPopu(),
                    onPressed: () {},
                    child: const Text(
                      'Closed Account',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
