import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:trusty/src/auth/screen/sign_up.dart';
import 'package:trusty/src/auth/widgets/buttons.dart';
import 'package:trusty/src/auth/widgets/customtextfield.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/controllers/authcontroller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundColor,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.08),
                    Center(child: Text("Login", style: textblacklargeBold)),
                    SizedBox(height: height * 0.05),
                    Text(
                      "Please log in to enjoy all Trusty features",
                      style: textblackmedium,
                    ),
                    SizedBox(height: height * 0.05),
                    CustomTextField(
                      icon: FontAwesomeIcons.solidEnvelope,
                      height: height,
                      fieldTitle: "Email",
                      fieldHintText: "Enter your email",
                      controller: authController.loginEmailController,
                    ),
                    SizedBox(height: height * 0.05),
                    CustomPsdField(
                      icon: FontAwesomeIcons.key,
                      height: height,
                      fieldTitle: "Password",
                      fieldHintText: "Enter your password",
                      controller: authController.loginPasswordController,
                    ),
                    SizedBox(height: height * 0.01),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text(
                          "Fotgotten Password ?",
                          style: textprimaryBold,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    CustomButtonIcon(
                      icon: Icons.arrow_forward_ios_rounded,
                      btnTitle: "Login",
                      btnColor: primaryColor,
                      ontap: () {
                        authController.checkLogin();
                      },
                    ),
                    Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width * 0.5,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Don’t have an account?",
                                  style: textblackmedium,
                                ),
                              ),
                            ),
                            Container(
                              width: width * 0.4,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  style: TextButton.styleFrom(),
                                  onPressed: () {
                                    Get.to(() => Signup());
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: textprimaryBold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
