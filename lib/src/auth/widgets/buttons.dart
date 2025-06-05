import 'dart:io';

import 'package:flutter/material.dart';
import 'package:trusty/src/constants/decoration.dart';


class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.btnTitle,
    required this.height,
    required this.width,

    this.ontap,
  });

  final String btnTitle;

  final void Function()? ontap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        width: width * 0.9,
        height: height * 0.05,
        child: TextButton(
          onPressed: ontap,
          child: Text(btnTitle, style: textblackmedium),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnTitle,
    required this.btnColor,
    this.ontap,
  });

  final String btnTitle;
  final Color btnColor;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      child: SizedBox(
        width: width * 0.9,
        height: height * 0.065,
        child: ElevatedButton(
          onPressed: ontap,

          style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(btnTitle, style: textwhitemedium),
        ),
      ),
    );
  }
}

class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon({
    super.key,
    required this.btnTitle,
    required this.btnColor,
    required this.icon,
    this.ontap,
  });

  final String btnTitle;
  final Color btnColor;
  final void Function()? ontap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      child: SizedBox(
        width: width * 0.9,
        height: height * 0.065,
        child: ElevatedButton.icon(
          onPressed: ontap,

          icon: Icon(icon, color: secondaryColor, size: 15),
          iconAlignment: IconAlignment.end,
          style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          label: Text(btnTitle, style: textwhitemedium),
        ),
      ),
    );
  }
}
