
import 'package:Funtrails/common/widgets/custom_shap/curved_edge/curved_widget.dart';
import 'package:flutter/material.dart';

class Tcurveedgewidget extends StatelessWidget {
  const Tcurveedgewidget({
    super.key,
    this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: Tcustomervedwidget(), child: child);
  }
}