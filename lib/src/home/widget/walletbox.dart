import 'package:candy_app/decoration.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WalletBox extends StatelessWidget {
  const WalletBox({
    super.key,
    required this.width,
    required this.height,
    this.amount,
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.topIcon,
    this.ontap,
  });

  final double width;
  final double height;
  final String? title, amount;
  final IconData icon, topIcon;
  final Color iconColor;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    // Determine the minimum height based on whether the amount is empty

    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Container(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Icon(topIcon, color: primaryColor, size: 30),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                    child: Container(
                      child: Icon(icon, size: 30, color: iconColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      child: Text(title ?? "", style: textBlackMedium),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Text(amount ?? "", style: textBlackMediumBold),
              ),
            ],
          ),
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade300, // Shadow color with opacity
            //     spreadRadius: 5, // How far the shadow spreads
            //     blurRadius: 5, // The blur intensity of the shadow
            //     offset: const Offset(0, 3),
            //   ),
            // ],
            color: lightWhite,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class WalletBox1 extends StatelessWidget {
  const WalletBox1({
    super.key,
    required this.width,
    required this.height,
    this.titleBold,
    required this.title,
    required this.topIcon,
    this.ontap,
  });

  final double width;
  final double height;
  final String? title, titleBold;
  final IconData topIcon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    // Determine the minimum height based on whether the amount is empty

    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Container(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Icon(topIcon, color: primaryColor, size: 30),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      child: Text(title ?? "", style: textBlackMedium),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Text(titleBold ?? "", style: textBlackMediumBold),
              ),
            ],
          ),
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade300, // Shadow color with opacity
            //     spreadRadius: 5, // How far the shadow spreads
            //     blurRadius: 5, // The blur intensity of the shadow
            //     offset: const Offset(0, 3),
            //   ),
            // ],
            color: lightWhite,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class WalletBox2 extends StatelessWidget {
  const WalletBox2({
    super.key,
    required this.width,
    required this.height,
    this.titleBold,
    required this.title,
    required this.topIcon,
    required this.mimititle,
    this.ontap,
  });

  final double width;
  final double height;
  final String? title, titleBold, mimititle;
  final IconData topIcon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    // Determine the minimum height based on whether the amount is empty

    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Container(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Icon(topIcon, color: primaryColor, size: 30),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      child: Text(title ?? "", style: textBlackMedium),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 8),
                child: Text(titleBold ?? "", style: textBlackMediumBold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  mimititle ?? "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Helvetica",
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade300, // Shadow color with opacity
            //     spreadRadius: 5, // How far the shadow spreads
            //     blurRadius: 5, // The blur intensity of the shadow
            //     offset: const Offset(0, 3),
            //   ),
            // ],
            color: lightWhite,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class MoneyBox extends StatelessWidget {
  const MoneyBox({
    super.key,
    required this.width,
    required this.height,
    this.amount,
    required this.title,
    required this.icon,
    required this.iconColor,
  });

  final double width;
  final double height;
  final String? title, amount;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    // Determine the minimum height based on whether the amount is empty

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      child: Container(
        height: height * 0.16,
        width: width * 0.43,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: height * 0.05,
                width: width * 0.15,
                child: Icon(icon, size: 30, color: iconColor),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 8,
                ),
                child: Container(
                  child: Text(title ?? "", style: textBlackMedium),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 8,
                ),
                child: Container(
                  child: Text(amount ?? "", style: textBlackMediumBold),
                ),
              ),
            ],
          ),
        ),
      ),
      // child: ConstrainedBox(
      //   constraints: BoxConstraints(
      //     maxWidth: width * 0.43,
      //     minHeight: minHeight, // Use the dynamic minHeight here
      //   ),
      //   child: Container(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Row(
      //           children: [
      //             Container(
      //               height: height * 0.04,
      //               child: Icon(icon, size: 40, color: iconColor),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 15, left: 8, bottom: 8),
      //               child: Container(
      //                 child: Text(title ?? "", style: textBlackMedium),
      //               ),
      //             ),
      //           ],
      //         ),
      //         if (amount != null && amount!.isNotEmpty)
      //           Padding(
      //             padding: const EdgeInsets.only(left: 8, bottom: 16),
      //             child: Text(amount ?? "", style: textBlackMedium),
      //           ),
      //       ],
      //     ),
      //     decoration: BoxDecoration(
      //       color: lightBlack,
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      // ),
    );
  }
}
