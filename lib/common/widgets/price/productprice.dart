import 'package:flutter/material.dart';

class Tprductprice extends StatelessWidget {
  const Tprductprice(
      {super.key,
      this.currencySign = '\$',
      required this.price,
      this.Maxline = 1,
      this.islarge = false,
      this.linethrougre = false});

  final String currencySign, price;
  final int Maxline;
  final bool islarge;
  final bool linethrougre;
  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      overflow: TextOverflow.ellipsis,
      maxLines: Maxline,
      style: islarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: linethrougre ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: linethrougre ? TextDecoration.lineThrough : null),
    );
  }
}
