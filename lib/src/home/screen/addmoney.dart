import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:trusty/src/auth/widgets/buttons.dart';
import 'package:trusty/src/auth/widgets/customtextfield.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/controllers/addmoneycontroller.dart';
import 'package:trusty/src/home/widget/appbar.dart';
import 'package:trusty/src/home/widget/field.dart';
import 'package:trusty/src/home/widget/pickdate.dart';

class AddMoneyPage extends StatefulWidget {
  AddMoneyPage({super.key});

  @override
  State<AddMoneyPage> createState() => _AddMoneyPageState();
}

class _AddMoneyPageState extends State<AddMoneyPage> {
  final Addmoneycontroller addmoneycontroller = Get.put(Addmoneycontroller());
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: CustomAppBarTitleBack(barTitle: "Add Money Record"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextInputField(
                      height: height,
                      fieldTitle: "Name",
                      fieldHintText: "Name",
                      controller: addmoneycontroller.nameController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 8,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Text("Type", style: textblackmedium),
                    ),
                    DropDownField(
                      controller: addmoneycontroller.typeController,
                      dropDownList: [
                        DropDownValueModel(name: "Income", value: "income"),
                        DropDownValueModel(name: "Expenses", value: "Expenses"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 8,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Text("Select Date", style: textblackmedium),
                    ),
                    pickedDate(controller: addmoneycontroller.dateController),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 8,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Text("Amount", style: textblackmedium),
                    ),
                    NumField(controller: addmoneycontroller.amountController),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 8,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Text("Choose Pocket", style: textblackmedium),
                    ),
                    DropDownField(
                      controller: addmoneycontroller.pockController,
                      dropDownList: [
                        DropDownValueModel(name: "Pocket1", value: "pocker1"),
                        DropDownValueModel(name: "Pocket2", value: "pocker2"),
                      ],
                    ),

                    CustomTextInputField(
                      maxline: 3,
                      height: height,
                      fieldTitle: "Description",
                      fieldHintText: "Description(Optional)",
                      controller: addmoneycontroller.descriptionController,
                    ),
                    CustomButton(
                      btnTitle: "Save",
                      btnColor: primaryColor,
                      ontap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
