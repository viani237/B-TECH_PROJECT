import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/home/screen/notification.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Overview", style: textwhitemediumBold),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(Notificationpage());
                        },
                        child: Icon(
                          FontAwesomeIcons.bell,
                          color: white,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(illustration1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        color: primaryColor,
      ),
    );
  }
}

class CustomAppBarTitleBack extends StatelessWidget {
  const CustomAppBarTitleBack({super.key, required this.barTitle});
  final String barTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      title: Text(barTitle, style: textwhitemediumBold),
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Icon(FontAwesomeIcons.arrowLeft, color: white, size: 20),
      ),
    );
  }
}

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({super.key, required this.barTitle});
  final String barTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: primaryColor,
      title: Text(barTitle, style: textwhitemediumBold),
    );
  }
}
// class CustomAppBarTitle extends StatelessWidget {
//   const CustomAppBarTitle({
//     super.key,
//     required this.width,
//     required this.barTitle,
//   });

//   final double width;
//   final String barTitle;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [Text(barTitle, style: textwhitelargeBold)],
//               ),
//             ),
//           ],
//         ),
//         color: primaryColor,
//       ),
//     );
//   }
// }

// class CustomAppBarTitleBack extends StatelessWidget {
//   const CustomAppBarTitleBack({
//     super.key,
//     required this.width,
//     required this.barTitle,
//   });

//   final double width;
//   final String barTitle;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//               child: Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Get.back();
//                     },
//                     child: Icon(
//                       FontAwesomeIcons.arrowLeft,
//                       color: white,
//                       size: 20,
//                     ),
//                   ),
//                   SizedBox(width: width * 0.07),

//                   Text(barTitle, style: textwhiteLBold),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         color: primaryColor,
//       ),
//     );
//   }
// }
