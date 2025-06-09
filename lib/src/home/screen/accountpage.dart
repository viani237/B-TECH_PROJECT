import 'dart:convert';

import 'package:candy_app/decoration.dart';
import 'package:candy_app/src/auth/controller/authcontroller.dart';
import 'package:candy_app/src/auth/controller/usercontroller.dart';
import 'package:candy_app/src/auth/widget/fields.dart';
import 'package:candy_app/src/home/screen/account.dart';
import 'package:candy_app/src/home/widgets/profilebox.dart';
import 'package:candy_app/src/home/widgets/tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final UserController userController = Get.put(UserController());
    final AuthController authController = Get.find<AuthController>();

    return Scaffold(
        backgroundColor: white,
        bottomNavigationBar: AccountNavBar(
          height: height,
          width: width,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, top: 8, bottom: 8, right: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Text(
                              "Profile",
                              style: textBlackLargeBold,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(children: [
                                    SizedBox(
                                      width:width *0.2,
                                      child: Center(
                                          // Centered the CircleAvatar for better presentation
                                          child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Obx(() {
                                                final profileImageUrl =
                                                    userController.getUserField(
                                                        'profileImageUrl');
                                                if (profileImageUrl != null &&
                                                    profileImageUrl.isNotEmpty) {
                                                  return CircleAvatar(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    radius: width *
                                                        0.25, // Adjust radius as needed
                                                    backgroundImage: MemoryImage(
                                                        base64Decode(
                                                            profileImageUrl)),
                                                  );
                                                } else {
                                                  // Placeholder if no image is available
                                                  return CircleAvatar(
                                                    radius: width *
                                                        0.25, // Adjust radius as needed
                                                    backgroundColor: Colors.grey[
                                                        300], // Placeholder color
                                                    child: Icon(
                                                      Icons.person,
                                                      size: width * 0.15,
                                                      color: Colors.grey[600],
                                                    ),
                                                  );
                                                }
                                              }))),
                                    )
                                  ])),
                              Column(
                                children: [
                                  Text(
                                      userController.getUserField('username') ??
                                          "No Data"),
                                  Text(userController.getUserField('email') ??
                                      "No Data")
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Profile_Box(
                              ontap: () {
                                Get.to(() => AccountInfo());
                              },
                              color: primaryColor,
                              width: width,
                              height: height,
                              title: "Account",
                              icon: FontAwesomeIcons.wallet),
                          Profile_Box(
                              ontap: () {},
                              color: red,
                              width: width,
                              height: height,
                              title: "About US",
                              icon: FontAwesomeIcons.rightFromBracket),
                          Profile_Box(
                              ontap: () {},
                              color: red,
                              width: width,
                              height: height,
                              title: "Help Center",
                              icon: FontAwesomeIcons.rightFromBracket),
                          Profile_Box(
                              ontap: () {
                                authController.logOut();
                              },
                              color: red,
                              width: width,
                              height: height,
                              title: "Log Out",
                              icon: FontAwesomeIcons.rightFromBracket)
                        ])))));
  }
}


//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 5, vertical: 10),
//                             child: Text(
//                               "Profile",
//                               style: textBlackLargeBold,
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(children: [
//                               Center(
//                                 // Centered the CircleAvatar for better presentation
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Obx(() {
//                                     final profileImageUrl = userController
//                                         .getUserField('profileImageUrl');
//                                     if (profileImageUrl != null &&
//                                         profileImageUrl.isNotEmpty) {
//                                       return CircleAvatar(
//                                         radius: width *
//                                             0.25, // Adjust radius as needed
//                                         backgroundImage: MemoryImage(
//                                             base64Decode(profileImageUrl)),
//                                       );
//                                     } else {
//                                       // Placeholder if no image is available
//                                       return CircleAvatar(
//                                         radius: width *
//                                             0.25, // Adjust radius as needed
//                                         backgroundColor: Colors
//                                             .grey[300], // Placeholder color
//                                         child: Icon(
//                                           Icons.person,
//                                           size: width * 0.15,
//                                           color: Colors.grey[600],
//                                         ),
//                                       );
//                                     }
//                                   }),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: height * 0.07,
//                               ),
//                               SizedBox(
//                                 height: height * 0.05,
//                               ),
//                               Profile_Box(
//                                   ontap: () {
//                                     Get.to(() => AccountInfo());
//                                   },
//                                   color: primaryColor,
//                                   width: width,
//                                   height: height,
//                                   title: "Account",
//                                   icon: FontAwesomeIcons.wallet),
//                               Profile_Box(
//                                   color: green,
//                                   width: width,
//                                   height: height,
//                                   title: "Export Data",
//                                   icon: FontAwesomeIcons.arrowUpFromBracket),
//                               Profile_Box(
//                                   ontap: () {
//                                     authController.logOut();
//                                   },
//                                   color: red,
//                                   width: width,
//                                   height: height,
//                                   title: "Log Out",
//                                   icon: FontAwesomeIcons.rightFromBracket)
//                             ]),
//                           )
//                         ])))));
//   }
// }
