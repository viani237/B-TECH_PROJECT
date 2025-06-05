import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:trusty/src/auth/screen/login.dart';
import 'package:trusty/src/auth/widgets/buttons.dart';
import 'package:trusty/src/auth/widgets/customtextfield.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/controllers/authcontroller.dart';

import 'package:trusty/src/home/widget/imagepick.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final AuthController authController = Get.put(AuthController());
    final ImageController imageController = Get.put(
      ImageController(),
      tag: "userProfile",
    );
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.05),
                Center(child: Text("Sign Up", style: textblacklargeBold)),
                SizedBox(height: height * 0.02),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Please sign up to enjoy all Trusty features",
                    style: textblackmedium,
                  ),
                ),
                SizedBox(height: height * 0.01),
                CustomTextField(
                  icon: FontAwesomeIcons.user,
                  height: height,
                  fieldTitle: "Name",
                  fieldHintText: "name",
                  controller: authController.usernameController,
                ),
                SizedBox(height: height * 0.01),
                CustomTextField(
                  icon: FontAwesomeIcons.solidEnvelope,
                  height: height,
                  fieldTitle: "Email",
                  fieldHintText: "@email.com",
                  controller: authController.emailController,
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 8,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Text("Phone Number", style: textblackmedium),
                ),
                PhoneField(
                  controller: authController.phoneNumberController,
                  hint: "Enter Phone number",
                ),
                SizedBox(height: height * 0.01),
                CustomPsdField(
                  icon: FontAwesomeIcons.key,
                  height: height,
                  fieldTitle: "Password",
                  fieldHintText: "password",
                  controller: authController.passwordController,
                ),

                SizedBox(height: height * 0.05),
                CustomButtonIcon(
                  btnTitle: "Sign Up",
                  btnColor: primaryColor,
                  icon: Icons.arrow_forward_ios_rounded,
                  ontap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return UpdateImageModalSheet(
                          imageController: imageController,
                          btnTitle: "Continue",
                          text: "Tap to select and add your user profile",
                          ontap: () {
                            authController.checkSignUp();
                          },
                          height: height,
                          width: width,
                        );
                      },
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    children: [
                      Text("Already have an account?", style: textblackmedium),
                      TextButton(
                        onPressed: () {
                          Get.to(LoginPage());
                        },
                        child: Text("Login", style: textprimaryBold),
                      ),
                    ],
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
