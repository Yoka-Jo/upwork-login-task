import 'package:flutter/material.dart';
import '../../../resources/colors_manager.dart';
import '../../../resources/strings_manager.dart';
import '../../../resources/text/styles_manager.dart';
import '../../../resources/values_manager.dart';

class ApicalFitnessWelcomeToLifeTime extends StatelessWidget {
  const ApicalFitnessWelcomeToLifeTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.apicalFitness,
          style: getSemiBoldStyle(
              color: AppColors.black,
              family: FontFamilies.oswald,
              fontSize: 35.0),
        ),
        SizedBox(
          height: AppSizeH.s15,
        ),
        Text(
          AppStrings.welcomeToLifeTime,
          style: getMediumStyle(
              color: AppColors.black,
              family: FontFamilies.inter,
              fontSize: 16.0),
        ),
      ],
    );
  }
}
