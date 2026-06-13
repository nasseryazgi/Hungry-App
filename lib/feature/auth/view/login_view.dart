import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_strings.dart';

import '../../../shared/custom_text.dart';
import '../../../shared/custom_textfield.dart';
import '../widgets/custom_buttom.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

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
            child: Form(
              key: formkey,
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
                  CustomAuthButton(
                    buttonString: 'Login',
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        print('login Done');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
