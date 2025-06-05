import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trusty/src/auth/screen/login.dart';
import 'package:trusty/src/auth/widgets/buttons.dart';
import 'package:trusty/src/constants/decoration.dart';

class SlidePage1 extends StatelessWidget {
  const SlidePage1({
    super.key,
    required this.width,
    required this.height,
    required this.smallTitle,
    required this.title,
    required this.image,

    required this.btnText,
    required this.onNextPage,
  });

  final double width;
  final double height;
  final String title;
  final String smallTitle;
  final String btnText;
  final String image;
  final void Function()? onNextPage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: secondaryColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width * 1,
                height: height * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 8,
                              bottom: 8,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: height * 0.01,
                              width: width * 0.07,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightgray,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              height: height * 0.01,
                              width: width * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.2,
                      height: height * 0.1,

                      child: CustomTextButton(
                        ontap: () {
                          Get.to(LoginPage());
                        },
                        btnTitle: "Skip",
                        height: height,
                        width: width,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: height * 0.5,
                width: width * 1,

                child: Stack(
                  children: [
                    Positioned(
                      top: height * 0.007,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          blurBackground,
                          height: height * 0.5,
                          width: width * 1,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(image, height: height * 0.5),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(title, style: textblacklargeBold),
                ),
              ),
              SizedBox(height: height * 0.03),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(smallTitle, style: textblackmedium),
                ),
              ),
              SizedBox(height: height * 0.09),

              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.01),
                child: CustomButtonIcon(
                  icon: Icons.arrow_forward_ios_rounded,
                  btnTitle: btnText,
                  btnColor: primaryColor,
                  ontap: onNextPage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SlidePage2 extends StatelessWidget {
  const SlidePage2({
    super.key,
    required this.width,
    required this.height,
    required this.smallTitle,
    required this.title,
    required this.image,

    required this.btnText,
  });

  final double width;
  final double height;
  final String title;
  final String smallTitle;
  final String btnText;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: secondaryColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width * 1,
                height: height * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 8,
                              bottom: 8,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightgray,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              height: height * 0.01,
                              width: width * 0.02,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: height * 0.01,
                              width: width * 0.07,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.2,
                      height: height * 0.1,

                      child: CustomTextButton(
                        ontap: () {
                          Get.to(LoginPage());
                        },
                        btnTitle: "Skip",
                        height: height,
                        width: width,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: height * 0.5,
                width: width * 1,

                child: Stack(
                  children: [
                    Positioned(
                      top: height * 0.007,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          blurBackground,
                          height: height * 0.5,
                          width: width * 1,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(image, height: height * 0.5),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(title, style: textblacklargeBold),
                ),
              ),
              SizedBox(height: height * 0.03),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(smallTitle, style: textblackmedium),
                ),
              ),
              SizedBox(height: height * 0.09),

              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.01),
                child: CustomButtonIcon(
                  icon: Icons.arrow_forward_ios_rounded,
                  btnTitle: btnText,
                  btnColor: primaryColor,
                  ontap: () {
                    Get.to(() => LoginPage());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
