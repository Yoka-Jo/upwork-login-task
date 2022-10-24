import 'package:flutter/material.dart';
import 'package:upwork_task/presentation/resources/colors_manager.dart';
import 'package:upwork_task/presentation/resources/text/styles_manager.dart';

import '../../../resources/values_manager.dart';

class ORWidget extends StatelessWidget {
  const ORWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSizeH.s30),
      child: Row(children: [
        const Expanded(
            child: Divider(
          thickness: 1.5,
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizeW.s14 / 2),
          child: Text(
            "OR",
            style: getRegularStyle(
                color: AppColors.grey,
                fontSize: 15.0,
                family: FontFamilies.roboto),
          ),
        ),
        const Expanded(
            child: Divider(
          thickness: 1.5,
        )),
      ]),
    );
  }
}
