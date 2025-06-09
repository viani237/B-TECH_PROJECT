import 'package:candy_app/decoration.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile_Box extends StatelessWidget {
  const Profile_Box({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.icon,
    required this.color,
    this.ontap,
  });

  final double width;
  final double height;
  final IconData icon;
  final String title;
  final void Function()? ontap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: width * 0.9,
                height: height * 0.005,
                color: lightWhite,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.01, horizontal: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 1),
                    child: SizedBox(
                      width: width * 0.45,
                      child: Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: textBlackMedium,
                      ),
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    color: black,
                    size: 17.5,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: width * 0.9,
                height: height * 0.005,
                color: lightWhite,
              ),
            ),
          ],
        ),
      ),
    );
    // return Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
    //     child: GestureDetector(
    //       onTap: ontap,
    //       child: Container(
    //         width: width * 1,
    //         height: height * 0.08,
    //         child: Padding(
    //           padding: const EdgeInsets.all(10),
    //           child: Column(
    //             children: [
    //               Container(
    //                 width: width * 0.9,
    //                 height: height * 0.005,
    //                 color: lightWhite,
    //               ),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 3, left: 1),
    //                     child: SizedBox(
    //                       width: width * 0.45,
    //                       child: Text(
    //                         title,
    //                         overflow: TextOverflow.ellipsis,
    //                         maxLines: 1,
    //                         style: textBlackMedium,
    //                       ),
    //                     ),
    //                   ),
    //                   Icon(
    //                     FontAwesomeIcons.chevronRight,
    //                     color: black,
    //                     size: 17.5,
    //                   )
    //                 ],
    //               ),
    //               Container(
    //                 width: width * 0.9,
    //                 height: height * 0.005,
    //                 color: lightWhite,
    //               ),
    //             ],
    //           ),
    //           // Icon(
    //           //   FontAwesomeIcons.chevronRight,
    //           //   color: black,
    //           // size: 17.5,
    //         ),
    //       ),
  }
}
