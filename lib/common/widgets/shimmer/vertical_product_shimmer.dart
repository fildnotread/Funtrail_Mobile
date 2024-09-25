import 'package:Funtrails/common/widgets/layout/gride_layout.dart';
import 'package:Funtrails/common/widgets/shimmer/Shimmer.dart';
import 'package:flutter/material.dart';

class VerticalProductShimmer extends StatelessWidget {
  const VerticalProductShimmer({
    Key? key,
    this.itemCount = 4,
  }) : super(key: key);

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return TgrideLayout(
      // Assuming TGridLayout is correctly imported and defined
      Itemcout: itemCount,
      Itembuiler: (_, __) => SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TshimmerEffect(
                width: 100,
                height: 100), // Replace with your shimmer effect widget
            SizedBox(height: 8),
            const TshimmerEffect(
                width: 100,
                height: 15), // Replace with your shimmer effect widget
            const SizedBox(height: 8),
            const TshimmerEffect(
                width: 100,
                height: 15), // Replace with your shimmer effect widget
          ],
        ),
      ),
    );
  }
}
