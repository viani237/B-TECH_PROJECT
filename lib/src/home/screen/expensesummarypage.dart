import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/home/widget/appbar.dart';
import 'package:trusty/src/home/widget/tabs.dart';
import 'package:trusty/src/home/widget/transaction.dart';
import 'package:trusty/src/home/widget/walletbox.dart';

class ExSummarypage extends StatelessWidget {
  const ExSummarypage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: CustomAppBarTitleBack(barTitle: "Expenses Summary"),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.02),
                WalletBox(
                  title: "Expenses",
                  icon: FontAwesomeIcons.caretDown,
                  iconColor: red,
                  amount: "20000.00CFA",
                  width: width * 0.9,
                  height: height * 0.18,
                  topIcon: FontAwesomeIcons.faceSadCry,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      WalletBox2(
                        mimititle: "Not testing",
                        titleBold: "20000.00CFA",
                        width: width * 0.42,
                        height: height * 0.18,
                        topIcon: FontAwesomeIcons.faceSmileBeam,
                        title: "Lowest Expense",
                      ),
                      WalletBox2(
                        mimititle: "Testin",
                        titleBold: "20000.00CFA",
                        width: width * 0.42,
                        height: height * 0.18,
                        topIcon: FontAwesomeIcons.faceSmileBeam,
                        title: "Highest Expense",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("History", style: textblackmediumBold),
                ),
                TransactionBox(
                  width: width,
                  height: height,
                  transactionTitle: "TAKU KEVIN",
                  transactionDate: "17/04/23",
                  transactionAmount: "50000.00CFA",
                  transactionColor: red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
