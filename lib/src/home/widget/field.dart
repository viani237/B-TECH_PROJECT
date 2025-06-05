import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:trusty/src/constants/decoration.dart';

class DropDownField extends StatelessWidget {
  const DropDownField({
    super.key,
    required this.controller, // Changed 'value' to 'controller' for clarity
    required this.dropDownList, // Add the dropDownList parameter
  });

  final SingleValueDropDownController controller;
  final List<DropDownValueModel> dropDownList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: DropDownTextField(
        controller: controller,
        clearIconProperty: IconProperty(color: Colors.black),
        dropDownIconProperty: IconProperty(color: Colors.black, size: 40),
        enableSearch: true,
        textFieldDecoration: InputDecoration(
          fillColor: lightWhite,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2.5, color: Colors.grey[200]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2.5, color: Colors.grey[200]!),
          ),
        ),
        listSpace: 20,
        listPadding: ListPadding(top: 20),

        validator: (value) {
          if (value == null) {
            return "Required field";
          } else {
            return null;
          }
        },
        dropDownList: dropDownList, // Use the dynamic list here
        listTextStyle: textblackmedium,
        dropDownItemCount: 5, // Adjust as needed, or remove for automatic
        onChanged: (val) {},
      ),
    );
  }
}

class NumField extends StatelessWidget {
  NumField({super.key, required this.controller, this.hint});
  final String? hint;

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(
          fontFamily: "Helvetica",
          fontWeight: FontWeight.w500,
          fontSize: 13.5,
        ),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: lightWhite,
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  AppTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.maxline,
  });
  final String hint;
  final int maxline;

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        maxLines: maxline,
        controller: controller,
        keyboardType: TextInputType.text,
        style: const TextStyle(
          fontFamily: "Helvetica",
          fontWeight: FontWeight.w500,
          fontSize: 13.5,
        ),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: lightWhite,
        ),
      ),
    );
  }
}
