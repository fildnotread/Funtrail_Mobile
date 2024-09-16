import 'package:Funtrails/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Tseetinfmenustyle extends StatelessWidget {
  const Tseetinfmenustyle(
      {super.key,
      required this.iconss,
      required this.title,
      required this.subtitle,
      this.trailing,
      this.ontap});

  final IconData iconss;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? ontap;
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconss,
        size: 28,
        color: TColors.primary,
      ),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
      trailing: trailing,
      onTap: ontap,
    );
  }
}
