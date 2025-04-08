import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitlly/auth/pages/forgetPassword.dart';
import 'package:habitlly/home/homePage.dart';
import 'package:habitlly/util/helper.dart';
import 'package:habitlly/util/sizedconfig.dart';
import 'package:habitlly/widgets/Buttons.dart';
import 'package:habitlly/widgets/text_fields.dart';

// ignore: must_be_immutable
class LoginForm extends StatelessWidget {
  //!-------------------controllers--------------------------
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  //!-------------------controllers--------------------------
  bool isPassword = true;
  LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //! Email
        Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.05),
            child: TextField(
              controller: emailController,
              decoration: customTextFieldDecoration(
                  hint: "Email",
                  prefixIcon: const Icon(Icons.person_outline_rounded),
                  isWhite: false),
            )),
        //! Password
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.05, vertical: 8),
            child: PasswordTextField(
              controller: passwordController,
              hint: "password",
            )),
        //! login Button
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.05),
          child: Button("Login", () {
            Get.to(HomePage());
          }),
        ),
        //! forgot password
        TextButton(
            onPressed: () {
              Get.to(const forgetPassword());
            },
            child: Text("Forgot Password ?", style: manropeFun(context))),
      ],
    );
  }
}

//! inputDecoration of the textFiles

