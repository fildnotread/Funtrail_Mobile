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
      itemCount: Itemcout,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtens,
      ),
      itemBuilder: Itembuiler,
    );
  }
}
