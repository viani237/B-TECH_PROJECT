import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trusty/src/auth/screen/login.dart';
import 'package:trusty/src/auth/widgets/buttons.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/home/screen/AddNewPocket_budget.dart';
import 'package:trusty/src/home/screen/Editpocket_budget.dart';
import 'package:trusty/src/home/widget/appbar.dart';
import 'package:trusty/src/home/widget/tabs.dart';
import 'package:get/get.dart';

class Budgetpage extends StatelessWidget {
  Budgetpage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: CustomAppBarTitle(barTitle: "Budgeting"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        shape: CircleBorder(),
        onPressed: () {
          Get.to(AddnewpocketBudget());
        },
        child: Icon(FontAwesomeIcons.plus, color: white),
      ),
      bottomNavigationBar: CustomAppBottomBarBudgets(
        height: height,
        width: width,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Column(
              children: [
                Container(
                  color: lightWhite,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.72),
                              child: Icon(FontAwesomeIcons.faceSmile),
                            ),
                            PopupMenuButton(
                              icon: Icon(
                                FontAwesomeIcons.ellipsisVertical,
                                color: primaryColor,
                                size: 20,
                              ),
                              itemBuilder:
                                  (context) => [
                                    PopupMenuItem(
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(Editpocket_budget());
                                        },

                                        child: Text("Edit"),
                                      ),
                                    ),
                                    PopupMenuItem(child: Text("Delete")),
                                  ],
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                            right: width * 0.820,
                            top: height * 0.02,
                          ),
                          child: Text("Food", style: textblacksmall),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: width * 0.69,
                            top: height * 0.01,
                          ),
                          child: Text("20.000 CFA", style: textblackmediumBold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.01),
                          child: Container(
                            height: height * 0.01,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: lightgray,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.01,
                            right: width * 0.3,
                          ),
                          child: Text(
                            "12.000 CFA out of 20.000 CFA used",
                            style: textblacksmallBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.2),
                          child: Text(
                            "money for food money for food, snacks etc",
                            style: textblacksmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  btnTitle: "Add new pocket",
                  btnColor: lightgray,
                  ontap: () {
                    Get.to(AddnewpocketBudget());
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
