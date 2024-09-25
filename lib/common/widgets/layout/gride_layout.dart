import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TgrideLayout extends StatelessWidget {
  const TgrideLayout({
    super.key,
    required this.Itemcout,
    this.mainAxisExtens = 288,
    required this.Itembuiler,
  });

  final int Itemcout;
  final double? mainAxisExtens;
  final Widget? Function(BuildContext, int) Itembuiler;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Itemcout, // Number of items in the grid
      shrinkWrap:
          true, // Makes the GridView take up only as much space as needed
      padding: EdgeInsets.zero, // No extra padding around the grid
      physics:
          const NeverScrollableScrollPhysics(), // Disables the GridView's own scrolling
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        mainAxisSpacing:
            TSizes.gridViewSpacing, // Vertical spacing between items
        crossAxisSpacing:
            TSizes.gridViewSpacing, // Horizontal spacing between items
        mainAxisExtent: mainAxisExtens, // Height of each item
      ),
      itemBuilder: Itembuiler, // Function that builds each item in the grid
    );
  }
}
