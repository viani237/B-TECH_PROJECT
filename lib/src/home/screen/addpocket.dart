import 'package:candy_app/decoration.dart';

import 'package:candy_app/src/auth/widget/auth_button.dart';
import 'package:candy_app/src/auth/widget/bars.dart';
import 'package:candy_app/src/auth/widget/fields.dart';

import 'package:candy_app/src/home/controllers/transactioncontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewPocketPage extends StatefulWidget {
  AddNewPocketPage({super.key});

  @override
  State<AddNewPocketPage> createState() => _AddNewPocketPageState();
}

class _AddNewPocketPageState extends State<AddNewPocketPage> {
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
                title: "Add Pocket",
                width: width,
                height: height,
              ),
            ]))),
        backgroundColor: white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
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
                              hint: "Name of the Pocket ",
                              controller:
                                  transactionController.pocketTitleController),
                          Field_Title(Title: "Amount"),
                          AppNumField(
                              hint: "Enter Amount(5000)",
                              controller:
                                  transactionController.pocketAmountController),
                          Field_Title(Title: "Description"),
                          CustomTextField(
                              hint: "Description...",
                              maxline: 3,
                              controller: transactionController
                                  .pocketDescriptionController),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          CustomBtn(
                              height: height * 0.075,
                              width: width * 1,
                              ontap: () {
                                transactionController.checkAddPocket();
                              },
                              btnColor: primaryColor,
                              btnstyle: textWhiteMedium,
                              btnTitle: "Add New Pocket")
                        ])))));
  }
}
