// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// class THomecategories extends StatelessWidget {
//   const THomecategories({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final controllercategories = Get.put(CategoriesController());
//     return Obx(() {
//       if (controllercategories.isLoading.value)
//         return const Tcategories_shimmerEffect();

//       if (controllercategories.featureCategories.isEmpty) {
//         return Center(
//           child: Text(
//             'No Data Found',
//             style: Theme.of(context)
//                 .textTheme
//                 .bodyMedium!
//                 .apply(color: Colors.white),
//           ),
//         );
//       }
//       return SizedBox(
//         height: 80,
//         width: double.infinity,
//         child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: controllercategories.featureCategories.length,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (_, index) {
//               final category = controllercategories.featureCategories[index];
//               return TVrtcalimgetext(
//                 image: category.image,
//                 title: category.name,
//                 ontap: () => Get.to(() => const SubCategoriesScreen()),
//               );
//             }),
//       );
//     });
//   }
// }
