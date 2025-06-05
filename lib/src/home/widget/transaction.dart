import 'package:flutter/material.dart';
import 'package:trusty/src/constants/decoration.dart';

class TransactionBox extends StatelessWidget {
  const TransactionBox({
    super.key,
    required this.width,
    required this.height,
    required this.transactionTitle,
    required this.transactionDate,
    required this.transactionAmount,
    required this.transactionColor,
  });

  final double width;
  final double height;
  final String? transactionTitle;
  final String? transactionDate;
  final String? transactionAmount;
  final Color? transactionColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width * 0.9,
        height: height * 0.125,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.07,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          child: Text(
                            transactionTitle ?? "",
                            style: textblackmediumBold,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          child: Text(
                            transactionDate ?? "",
                            style: textblacksmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: width * 0.35,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(
                        transactionAmount ?? "",
                        style: TextStyle(
                          color: transactionColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Helvetica",
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        decoration: BoxDecoration(
          color: lightWhite,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class TransactionBox1 extends StatelessWidget {
  const TransactionBox1({
    super.key,
    required this.width,
    required this.height,
    required this.transactionTitle,
    required this.transactionDate,
  });

  final double width;
  final double height;
  final String? transactionTitle;
  final String? transactionDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width * 0.9,
        height: height * 0.1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.01),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                transactionTitle ?? "",
                style: textblackmediumBold,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Text(transactionDate ?? "", style: textblacksmall),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: lightWhite,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Container(
    //           width: width * 0.5,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               SizedBox(
    //                 height: height * 0.09,
    //                 child: Padding(
    //                   padding: const EdgeInsets.symmetric(
    //                     vertical: 5,
    //                     horizontal: 5,
    //                   ),
    //                   child: Text(
    //                     transactionTitle ?? "",
    //                     style: textblackmediumBold,
    //                     overflow: TextOverflow.ellipsis,
    //                     maxLines: 2,
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(
    //                 child: Padding(
    //                   padding: const EdgeInsets.symmetric(
    //                     vertical: 5,
    //                     horizontal: 10,
    //                   ),
    //                   child: Text(
    //                     transactionDate ?? "",
    //                     style: textblacksmall,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
  }
}
