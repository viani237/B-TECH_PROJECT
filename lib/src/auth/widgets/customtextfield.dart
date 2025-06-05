import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:trusty/src/constants/decoration.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.height,
    required this.fieldTitle,
    required this.fieldHintText,
    required this.controller,
    this.icon,
    this.maxline,
  });

  final double height;
  final String fieldTitle, fieldHintText;

  final TextEditingController controller;
  final int? maxline;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 8, top: 8, bottom: 8),
          child: Text(fieldTitle, style: textblackmedium),
        ),
        SizedBox(height: height * 0.01),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: TextFormField(
            maxLines: maxline,
            controller: controller,

            cursorColor: black,
            decoration: InputDecoration(
              prefixIcon: Icon(icon),
              hintText: fieldHintText,
              hintStyle: TextStyle(
                color: black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
              filled: true,
              fillColor: lightWhite,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTextInputField extends StatelessWidget {
  const CustomTextInputField({
    super.key,
    required this.height,
    required this.fieldTitle,
    required this.fieldHintText,
    required this.controller,

    this.maxline,
  });

  final double height;
  final String fieldTitle, fieldHintText;

  final TextEditingController controller;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 8, top: 8, bottom: 8),
          child: Text(fieldTitle, style: textblackmedium),
        ),
        SizedBox(height: height * 0.01),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: TextFormField(
            maxLines: maxline,
            controller: controller,

            cursorColor: black,
            decoration: InputDecoration(
              hintText: fieldHintText,
              hintStyle: TextStyle(
                color: black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
              filled: true,
              fillColor: lightWhite,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomPsdField extends StatelessWidget {
  CustomPsdField({
    super.key,
    required this.height,
    required this.fieldTitle,
    required this.fieldHintText,
    required this.controller,
    this.icon,
  });

  final double height;
  final String fieldTitle, fieldHintText;
  final IconData? icon;

  final TextEditingController controller;
  var isObscure = true.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 8, top: 8, bottom: 8),
          child: Text(fieldTitle, style: textblackmedium),
        ),
        SizedBox(height: height * 0.01),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Obx(
            () => TextFormField(
              obscureText: isObscure.value,

              controller: controller,

              cursorColor: black,
              decoration: InputDecoration(
                prefixIcon: Icon(icon),
                suffixIcon: Obx(
                  () => IconButton(
                    onPressed: () {
                      isObscure.value = !isObscure.value;
                    },
                    icon: isObscure.value
                        ? Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: black,
                            size: 20,
                          )
                        : Icon(FontAwesomeIcons.eye, color: black, size: 20),
                  ),
                ),

                hintText: fieldHintText,
                hintStyle: TextStyle(
                  color: black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
                filled: true,
                fillColor: lightWhite,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent, width: 2),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PhoneField extends StatelessWidget {
  PhoneField({required this.controller, this.hint, super.key});
  final TextEditingController controller;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.075,
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: const TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(FontAwesomeIcons.phone, color: black, size: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            hintText: hint,
            hintStyle: textblackmedium,
            fillColor: lightWhite,
          ),
        ),
      ),
    );
  }
}
