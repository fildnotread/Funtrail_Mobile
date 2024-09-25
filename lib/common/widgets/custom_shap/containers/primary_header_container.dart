import 'package:Funtrails/common/widgets/custom_shap/containers/circle_contianer.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edge/curved_edge_widget.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Tcurveedgewidget(
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: Tcircleercontainer(
                backgroundcolor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: Tcircleercontainer(
                backgroundcolor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 200,
              right: 300,
              child: Tcircleercontainer(
                backgroundcolor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
