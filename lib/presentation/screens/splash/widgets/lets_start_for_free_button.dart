import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../resources/routes/app_router.gr.dart';
import '../../../resources/strings_manager.dart';
import '../../../resources/values_manager.dart';

class LetsStartForFreeButton extends StatelessWidget {
  const LetsStartForFreeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s63),
      child: ElevatedButton(
        onPressed: () {
          context.router.replace(const LoginRoute());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppStrings.letsStartForFree,
            ),
            SizedBox(
              width: AppSizeW.s14,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: AppSizeH.s16,
            )
          ],
        ),
      ),
    );
  }
}
