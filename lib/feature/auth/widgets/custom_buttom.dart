import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_strings.dart';
import '../../../shared/custom_text.dart';

class CustomAuthButton extends StatelessWidget {
  CustomAuthButton({super.key, this.onTap, required this.buttonString});

  final Function()? onTap;
  final String buttonString;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: CustomText(
            text: buttonString,
            size: 20,
            color: AppColors.primaryColor,
            weight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
