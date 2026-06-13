import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_strings.dart';
import '../../../shared/custom_text.dart';
import '../../../shared/custom_textfield.dart';
import '../widgets/custom_buttom.dart';

class SingupView extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Gap(160),
                SvgPicture.asset('assets/logo/hungry.svg', width: 300),
                Gap(60),
                CustomTextField(controller: nameController, hintText: 'Name'),
                Gap(15),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Email Address',
                ),
                Gap(15),
                CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  isPassword: true,
                ),
                Gap(10),
                CustomTextField(
                  controller: passwordController,
                  hintText: ' Confirm Password',
                  isPassword: true,
                ),
                Gap(30),
                CustomAuthButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      print('SingUp Done');
                    }
                  },
                  buttonString: 'Sing Up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
