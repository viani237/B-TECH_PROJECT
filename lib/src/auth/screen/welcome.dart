import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trusty/src/auth/screen/splash.dart';
import 'package:trusty/src/auth/widgets/buttons.dart';
import 'package:trusty/src/constants/decoration.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: height * 0.1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(logo, height: height * 0.4),
                ),
                SizedBox(height: height * 0.07),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 21,
                  ),
                  child: Text(
                    "A budget is telling your money where to go instead of wondering where it went.",
                    style: textblackmedium,
                  ),
                ),
                SizedBox(height: height * 0.04),
                SizedBox(height: 20),
                CustomButton(
                  btnTitle: "Welcome",
                  btnColor: primaryColor,
                  ontap: () {
                    Get.to(() => Splash());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
