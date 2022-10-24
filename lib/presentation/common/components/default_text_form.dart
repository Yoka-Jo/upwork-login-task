// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:upwork_task/presentation/resources/colors_manager.dart';
import 'package:upwork_task/presentation/resources/text/styles_manager.dart';

import '../../resources/values_manager.dart';

class DefaultTextForm extends StatelessWidget {
  final String title;
  final String hintText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final TextEditingController textEditingController;
  const DefaultTextForm({
    Key? key,
    required this.title,
    required this.hintText,
    this.isObscure = false,
    this.suffixIcon,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: getRegularStyle(
                color: AppColors.black,
                fontSize: 16.0,
                family: FontFamilies.roboto),
          ),
        ),
        SizedBox(height: AppSizeH.s12),
        TextFormField(
          controller: textEditingController,
          obscureText: isObscure ?? false,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
