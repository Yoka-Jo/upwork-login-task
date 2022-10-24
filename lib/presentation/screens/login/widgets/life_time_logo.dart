import 'package:flutter/material.dart';

import '../../../resources/assets_manager.dart';
import '../../../resources/values_manager.dart';

class LifeTimeLogo extends StatelessWidget {
  const LifeTimeLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSizeH.s92),
      child: Image.asset(ImageAssets.lifeTimeFitness),
    );
  }
}
