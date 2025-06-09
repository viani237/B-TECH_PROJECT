import 'package:candy_app/decoration.dart';

import 'package:candy_app/src/auth/widget/auth_button.dart';
import 'package:candy_app/src/auth/widget/bars.dart';
import 'package:candy_app/src/auth/widget/fields.dart';
import 'package:candy_app/src/home/controllers/transactioncontroller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewGoalPage extends StatefulWidget {
  AddNewGoalPage({super.key});

  @override
  State<AddNewGoalPage> createState() => _AddNewGoalPageState();
}

class _AddNewGoalPageState extends State<AddNewGoalPage> {
  final TransactionsController transactionController =
      Get.put(TransactionsController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(height * 0.5),
            child: SafeArea(
                child: Row(children: [
              BasicAppBar(
                title: "Add Goal",
                width: width,
                height: height,
              ),
            ]))),
        backgroundColor: white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 1.0, top: 8, bottom: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            slide2,
                            height: height * 0.25,
                            width: width * 1,
                          ),
                          Field_Title(Title: "Title"),
                          CustomTextField(
                              hint: "Name of the Gaol ",
                              controller:
                                  transactionController.goalTitleController),
                          Field_Title(Title: "Amount"),
                          AppNumField(
                              hint: "Enter Amount(5000)",
                              controller:
                                  transactionController.goalAmountController),
                          Field_Title(Title: "Description"),
                          CustomTextField(
                              hint: "Description...",
                              maxline: 3,
                              controller: transactionController
                                  .goalDescriptionController),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          CustomBtn(
                              height: height * 0.075,
                              width: width * 1,
                              ontap: () {
                                transactionController.checkAddGoal();
                              },
                              btnColor: primaryColor,
                              btnstyle: textWhiteMedium,
                              btnTitle: "Add New Goal")
                        ])))));
  }
}
