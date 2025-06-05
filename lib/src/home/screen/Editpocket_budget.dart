import 'package:flutter/material.dart';
import 'package:trusty/src/auth/widgets/buttons.dart';
import 'package:trusty/src/auth/widgets/customtextfield.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/home/widget/appbar.dart';

class Editpocket_budget extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController amount = TextEditingController();
  final TextEditingController description = TextEditingController();
  Editpocket_budget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: CustomAppBarTitleBack(barTitle: "Edit pocket"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Column(
              children: [
                SizedBox(height: height * 0.02),
                CustomTextField(
                  height: height,
                  fieldTitle: "Name",
                  fieldHintText: "name",
                  controller: name,
                ),
                CustomTextField(
                  height: height,
                  fieldTitle: "Amount",
                  fieldHintText: "0.00 CFA",
                  controller: amount,
                ),
                CustomTextField(
                  height: height,
                  fieldTitle: "Description (Optional))",
                  fieldHintText: "Description (Optional)",
                  controller: description,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.3),
                  child: CustomButton(
                    btnTitle: "Save",
                    btnColor: primaryColor,
                    ontap: () {},
                  ),
                ),
                // Add your widgets here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
