import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_strings.dart';

import '../../../shared/custom_text.dart';
import '../../../shared/custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Gap(100),

                SvgPicture.asset('assets/logo/hungry.svg', width: 300),
                Gap(10),
                CustomText(
                  text: 'Welcome Back, Discover The Fast Food',
                  color: Colors.white,
                  size: 13,
                  weight: FontWeight.w500,
                ),
                Gap(20),
                CustomTextField(
                  hintText: 'Email Address',
                  controller: emailController,
                ),
                Gap(20),
                CustomTextField(
                  hintText: 'Password',
                  isPassword: true,
                  controller: passwordController,
                ),
                Gap(20),
                Center(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'Login',
                        size: 20,
                        color: AppColors.primaryColor,
                        weight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
