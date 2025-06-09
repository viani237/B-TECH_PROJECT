import 'package:candy_app/decoration.dart';
import 'package:candy_app/src/home/controllers/transactioncontroller.dart';
import 'package:candy_app/src/home/screen/editpocket.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopUpChild extends StatelessWidget {
  const PopUpChild({
    super.key,
    required this.width,
    required this.height,
    required this.icon,
    required this.title,
    this.ontap,
  });

  final double width;
  final double height;
  final String title;
  final IconData icon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: GestureDetector(
          onTap: ontap,
          child: Container(
            width: width * 0.8,
            height: height * 0.065,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: white),
            child: Row(
              children: [
                SizedBox(width: width * 0.02),
                Icon(
                  icon,
                  color: black,
                  size: 20,
                ),
                SizedBox(width: width * 0.02),
                Text(
                  title,
                  style: textBlackMedium,
                ),
              ],
            ),
          ),
        ));
  }
}

class CustomPopUp extends StatelessWidget {
  CustomPopUp(
      {super.key,
      required this.width,
      required this.height,
      required this.PocketId});

  final double width;
  final double height;

  final String PocketId;

  @override
  Widget build(BuildContext context) {
    return PopupMenuTheme(
      data: PopupMenuThemeData(color: Colors.transparent, elevation: 0),
      child: SizedBox(
        child: PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
                child: Container(
              decoration: BoxDecoration(
                  color: lightWhite, borderRadius: BorderRadius.circular(20)),
              width: width * 0.7,
              height: height * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  PopUpChild(
                    ontap: () {
                      Get.to(EditPocket(
                        pocket_id: PocketId,
                      ));
                    },
                    width: width,
                    height: height,
                    title: "Edit Pocket",
                    icon: Icons.edit,
                  ),
                  PopUpChild(
                    ontap: () {
                      TransactionsController().deletePocket(PocketId);
                    },
                    width: width,
                    height: height,
                    title: "Delete Pocket",
                    icon: Icons.delete,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
