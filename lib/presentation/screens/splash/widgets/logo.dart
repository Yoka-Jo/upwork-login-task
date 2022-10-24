import 'package:flutter/material.dart';
import '../../../resources/assets_manager.dart';
import '../../../resources/colors_manager.dart';
import '../../../resources/strings_manager.dart';
import '../../../resources/text/styles_manager.dart';
import '../../../resources/values_manager.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizeH.s397 + AppSizeH.s15 * 4,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: AppSizeH.s397,
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppSizeH.s100),
                  bottomRight: Radius.circular(AppSizeH.s100),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, AppSizeH.s15),
                blurRadius: 15.0,
              )
            ]),
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              radius: AppSizeH.s15 * 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.apical,
                    style: getBoldStyle(
                      color: AppColors.black,
                      fontSize: 25.0,
                      family: FontFamilies.oswald,
                    ),
                  ),
                  Image.asset(ImageAssets.fitness),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: AppSizeH.s140,
            child: Stack(
              children: [
                Image.asset(ImageAssets.lineDown),
                Image.asset(ImageAssets.lineUp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
