import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trusty/src/auth/screen/login.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/home/screen/addnewgoals.dart';
import 'package:trusty/src/home/widget/appbar.dart';
import 'package:trusty/src/home/widget/tabs.dart';
import 'package:get/get.dart';

class Goalspage extends StatelessWidget {
  const Goalspage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: CustomAppBarTitle(barTitle: "Goals"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        shape: CircleBorder(),
        onPressed: () {
          Get.to(addnewgoals());
        },
        child: Icon(FontAwesomeIcons.plus, color: white),
      ),
      bottomNavigationBar: CustomAppBottomBarGoal(height: height, width: width),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.25),
                  child: Image.asset(noNotification),
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "No goals yet for now, please click the '+' sign to set goals",
                      style: textblacksmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
