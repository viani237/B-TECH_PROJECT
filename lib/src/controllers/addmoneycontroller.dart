import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Addmoneycontroller extends GetxController {
  late TextEditingController nameController,
      amountController,
      descriptionController,
      dateController;

  late SingleValueDropDownController typeController, pockController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    nameController = TextEditingController();
    amountController = TextEditingController();
    descriptionController = TextEditingController();
    dateController = TextEditingController();
    typeController = SingleValueDropDownController();
    pockController = SingleValueDropDownController();
  }
}
