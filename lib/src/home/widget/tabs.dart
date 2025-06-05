import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:trusty/src/auth/screen/welcome.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/home/screen/budgetpage.dart';
import 'package:trusty/src/home/screen/goalpage.dart';
import 'package:trusty/src/home/screen/homepage.dart';
import 'package:trusty/src/home/screen/userpage.dart';

class BottomBarTabs extends StatelessWidget {
  const BottomBarTabs({
    super.key,
    required this.height,
    required this.width,
    required this.iconBoxColor,
    required this.iconColor,
    required this.tabIcon,
    required this.tabTitle,
    required this.ontap,
  });

  final double height;
  final double width;
  final String tabTitle;
  final IconData tabIcon;
  final Color iconColor, iconBoxColor;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 1),
            child: Column(
              children: [
                Icon(tabIcon, color: primaryColor),
                SizedBox(height: 5),
                Container(
                  height: height * 0.045,
                  width: width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: iconBoxColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text(tabTitle, style: textwhitemedium)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomBarTabsX extends StatelessWidget {
  const BottomBarTabsX({
    super.key,
    required this.height,
    required this.width,
    required this.iconColor,
    required this.tabIcon,
    required this.tabTitle,
    required this.ontap,
  });

  final double height;
  final double width;
  final String tabTitle;
  final IconData tabIcon;
  final Color iconColor;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 1),
            child: Column(
              children: [
                Icon(tabIcon),
                SizedBox(height: height * 0.015),
                Text(tabTitle, style: textblackmedium),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBottomBarHome extends StatelessWidget {
  const CustomAppBottomBarHome({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBarTabs(
            height: height,
            width: width * 0.2,
            iconBoxColor: primaryColor,
            iconColor: primaryColor,
            tabIcon: FontAwesomeIcons.house,
            tabTitle: "Home",
            ontap: () {
              Get.to(() => Homepage());
            },
          ),

          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.compass,
            tabTitle: "Budgeting",
            ontap: () {
              Get.to(() => Budgetpage());
            },
          ),

          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.flag,
            tabTitle: "Goals",
            ontap: () {
              Get.to(() => Goalspage());
            },
          ),

          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.user,
            tabTitle: "Profile",
            ontap: () {
              Get.to(() => Userpage());
            },
          ),
        ],
      ),
    );
  }
}

class CustomAppBottomBarBudgets extends StatelessWidget {
  const CustomAppBottomBarBudgets({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.house,
            tabTitle: "Home",
            ontap: () {
              Get.to(() => Homepage());
            },
          ),

          BottomBarTabs(
            height: height,
            width: width * 0.3,
            iconBoxColor: primaryColor,
            iconColor: primaryColor,
            tabIcon: FontAwesomeIcons.compass,
            tabTitle: "Budgeting",
            ontap: () {
              Get.to(() => Budgetpage());
            },
          ),

          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.flag,
            tabTitle: "Goals",
            ontap: () {
              Get.to(() => Goalspage());
            },
          ),

          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.user,
            tabTitle: "Profile",
            ontap: () {
              Get.to(() => Userpage());
            },
          ),
        ],
      ),
    );
  }
}

class CustomAppBottomBarGoal extends StatelessWidget {
  const CustomAppBottomBarGoal({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.house,
            tabTitle: "Home",
            ontap: () {
              Get.to(() => Homepage());
            },
          ),

          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.compass,
            tabTitle: "Budgeting",
            ontap: () {
              Get.to(() => Budgetpage());
            },
          ),

          BottomBarTabs(
            height: height,
            width: width * 0.2,
            iconBoxColor: primaryColor,
            iconColor: black,
            tabIcon: FontAwesomeIcons.flag,
            tabTitle: "Goals",
            ontap: () {
              Get.to(() => Goalspage());
            },
          ),

          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.user,
            tabTitle: "Profile",
            ontap: () {
              Get.to(() => Userpage());
            },
          ),
        ],
      ),
    );
  }
}

class CustomAppBottomBarProfile extends StatelessWidget {
  const CustomAppBottomBarProfile({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.house,
            tabTitle: "Home",
            ontap: () {
              Get.to(() => Homepage());
            },
          ),

          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.compass,
            tabTitle: "Budgeting",
            ontap: () {
              Get.to(() => Budgetpage());
            },
          ),

          BottomBarTabsX(
            height: height,
            width: width,
            iconColor: black,
            tabIcon: FontAwesomeIcons.flag,
            tabTitle: "Goals",
            ontap: () {
              Get.to(() => Goalspage());
            },
          ),

          BottomBarTabs(
            height: height,
            width: width * 0.2,
            iconBoxColor: primaryColor,
            iconColor: primaryColor,
            tabIcon: FontAwesomeIcons.user,
            tabTitle: "Profile",
            ontap: () {
              Get.to(() => Userpage());
            },
          ),
        ],
      ),
    );
  }
}
