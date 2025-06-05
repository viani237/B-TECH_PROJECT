import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trusty/src/constants/decoration.dart';

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
                      child: Text(title ?? "", style: textblackmedium),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Text(amount ?? "", style: textblackmediumBold),
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
                      child: Text(title ?? "", style: textblackmedium),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Text(titleBold ?? "", style: textblackmediumBold),
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
                      child: Text(title ?? "", style: textblackmedium),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 8),
                child: Text(titleBold ?? "", style: textblackmediumBold),
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

// class MoneyBox extends StatelessWidget {
//   const MoneyBox({
//     super.key,
//     required this.width,
//     required this.height,
//     this.amount,
//     required this.image,
//     required this.title,
//     required this.icon,
//     required this.iconColor,
//   });

//   final double width;
//   final double height;
//   final String? title, amount, image;
//   final IconData icon;
//   final Color iconColor;

//   @override
//   Widget build(BuildContext context) {
//     // Determine the minimum height based on whether the amount is empty
//     double minHeight = height * 0.12; // Default minimum height
//     if (amount == null || amount!.isEmpty) {
//       minHeight =
//           height *
//           0.10; // Smaller height when amount is empty.  Adjust this value as needed.
//     }

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
//       child: ConstrainedBox(
//         constraints: BoxConstraints(
//           maxWidth: width * 0.43,
//           minHeight: minHeight, // Use the dynamic minHeight here
//         ),
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Image.asset(
//                   image ?? "",
//                   height: height * 0.05,
//                   width: width * 0.2,
//                 ),
//               ),
//               Row(
//                 children: [
//                   Container(
//                     height: height * 0.04,
//                     child: Icon(icon, size: 40, color: iconColor),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 15, left: 8, bottom: 8),
//                     child: Container(
//                       child: Text(title ?? "", style: textblackmedium),
//                     ),
//                   ),
//                 ],
//               ),

//               if (amount != null && amount!.isNotEmpty)
//                 Padding(
//                   padding: const EdgeInsets.only(left: 8, bottom: 16),
//                   child: Text(amount ?? "", style: textblackmedium),
//                 ),
//             ],
//           ),
//           decoration: BoxDecoration(
//             color: lightWhite,
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//       ),
//     );
//   }
// }
