import 'package:flutter/material.dart';

class Tsectionheading extends StatelessWidget {
  const Tsectionheading({
    super.key,
    required this.title,
    this.buttomtitle = 'View all',
    this.textcolor,
    this.showactionbtn = true,
    this.onpressed,
  });

  final String title, buttomtitle;
  final Color? textcolor;
  final bool showactionbtn;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textcolor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showactionbtn)
          TextButton(onPressed: onpressed, child: Text(buttomtitle))
      ],
    );
  }
}
