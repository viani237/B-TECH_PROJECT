import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:trusty/src/auth/widgets/buttons.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/home/screen/editProfile.dart';
import 'package:trusty/src/home/widget/appbar.dart';
import 'package:trusty/src/home/widget/tabs.dart';
import 'package:get/get.dart';

class Userpage extends StatelessWidget {
  const Userpage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: CustomAppBarTitle(barTitle: "Profile"),
      ),

      bottomNavigationBar: CustomAppBottomBarProfile(
        height: height,
        width: width,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.1,
                vertical: height * 0.02,
              ),
              child: SizedBox(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: primaryColor,
                      backgroundImage: AssetImage(logo),
                    ),
                    SizedBox(width: width * 0.01),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.05),
                          child: Text("kevin Hart"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.05),
                          child: Text(
                            "mbibahviani264@gmail.com",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(() => Editprofile());
                          },
                          child: Text(
                            "Edit your profile",
                            style: TextStyle(color: red),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.15),
              child: Text(
                "A budget is telling your money where to go instead of wandering where it went ",
              ),
            ),
            SizedBox(height: height * 0.1),
            Container(
              width: width * 0.9,
              height: height * 0.055,

              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: lightgray),
                  bottom: BorderSide(color: lightgray),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                  
                    Text("Language"),
                    Icon(Icons.chevron_right_outlined),
                  ],
                ),
              ),
            ),
            Container(
              width: width * 0.9,
              height: height * 0.055,

              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: lightgray),
                  bottom: BorderSide(color: lightgray),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("About"), Icon(Icons.chevron_right_outlined)],
                ),
              ),
            ),
            Container(
              width: width * 0.9,
              height: height * 0.055,

              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: lightgray),
                  bottom: BorderSide(color: lightgray),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Help of Center"),
                    Icon(Icons.chevron_right_outlined),
                  ],
                ),
              ),
            ),
            Container(
              width: width * 0.9,
              height: height * 0.055,

              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: lightgray),
                  bottom: BorderSide(color: lightgray),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Log Out"),
                    Icon(Icons.chevron_right_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Row(
      //   children: [Text("About us"), Icon(Icons.chevron_right_outlined)],
      // ),
      // Row(
      //   children: [
      //     Text("Help us center"),
      //     Icon(Icons.chevron_right_outlined),
      //   ],
      // ),
      // Row(
      //   children: [Text("Log out"), Icon(Icons.chevron_right_outlined)],
      // ),
      // Padding(
    );
  }
}
