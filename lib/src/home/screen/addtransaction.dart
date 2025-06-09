import 'package:candy_app/decoration.dart';
import 'package:candy_app/src/auth/widget/auth_button.dart';
import 'package:candy_app/src/auth/widget/bars.dart';
import 'package:candy_app/src/auth/widget/fields.dart';
import 'package:candy_app/src/home/controllers/transactioncontroller.dart';
import 'package:candy_app/src/home/screen/addpocket.dart';
import 'package:candy_app/src/home/widgets/pickdate.dart';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AddNewTransactionPage extends StatefulWidget {
  AddNewTransactionPage({super.key});

  @override
  State<AddNewTransactionPage> createState() => _AddNewTransactionPageState();
}

class _AddNewTransactionPageState extends State<AddNewTransactionPage> {
  final TransactionsController transactionController =
      Get.put(TransactionsController());

  List<DropDownValueModel> typeDropDownItems = [
    const DropDownValueModel(name: 'Expense', value: 'expense'),
    const DropDownValueModel(name: 'Income', value: 'income'),
  ];

  // List<DropDownValueModel> pocketsDropDownItems = [];

  // @override
  // void initState() {
  //   super.initState();
  //   _loadPockets();
  // }

  // Future<void> _loadPockets() async {
  //   if (transactionController..isEmpty) {
  //     await transactionController.getUserPockets();
  //   }

  //   pocketsDropDownItems = transactionController.c
  //       .map((pockets) => DropDownValueModel(
  //             name: '${pockets.title ?? ""}',
  //             value: pockets.id ?? "",
  //           ))
  //       .toList();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.5),
          child: SafeArea(
            child: BasicAppBar(
              title: "Add Transaction",
              width: width,
              height: height,
            ),
          ),
        ),
        backgroundColor: white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 1.0, top: 8, bottom: 8),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Field_Title(Title: "Title"),
                          CustomTextField(
                              hint: "Name of the transaction(Food) ",
                              controller:
                                  transactionController.titleController),
                          Field_Title(Title: "Amount"),
                          AppNumField(
                              hint: "Enter Amount(5000)",
                              controller:
                                  transactionController.amountController),
                          Field_Title(Title: "Category"),
                          CustomDropDownField(
                            hint: "Enter Category(Expense or Income)",
                            dropDownList: typeDropDownItems,
                            controller:
                                transactionController.categoryController,
                          ),
                          Field_Title(Title: "Pocket"),
                          Obx(() {
                            // Map the reactive userPockets list to DropDownValueModel list
                            final List<DropDownValueModel>
                                pocketsDropDownItems =
                                transactionController.userPockets
                                    .map((pocket) => DropDownValueModel(
                                          name: pocket
                                              .title, // Display the pocket title
                                          value:
                                              pocket.id, // Store the pocket ID
                                        ))
                                    .toList();

                            if (pocketsDropDownItems.isEmpty) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  "No Pockets available. Please add a pocket first!",
                                  style:
                                      textBlackMedium, // Assuming this style exists
                                ),
                              );
                            }

                            return CustomDropDownField(
                              hint: "Select Pocket",
                              dropDownList: pocketsDropDownItems,
                              controller:
                                  transactionController.pocketController,
                            );
                          }),
                          Field_Title(Title: "Date"),
                          pickedDate(
                            controller: transactionController.dateController,
                          ),
                          Field_Title(Title: "Description"),
                          CustomTextField(
                              hint: "Description...",
                              maxline: 3,
                              controller:
                                  transactionController.descriptionController),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          CustomBtn(
                              height: height * 0.075,
                              width: width * 1,
                              ontap: () {
                                transactionController.checkTransaction();
                              },
                              btnColor: primaryColor,
                              btnstyle: textWhiteMedium,
                              btnTitle: "Add Transaction")
                        ])))));
  }
}
