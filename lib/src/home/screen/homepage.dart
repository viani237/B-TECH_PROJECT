import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trusty/src/constants/decoration.dart';
import 'package:trusty/src/home/screen/addmoney.dart';
import 'package:trusty/src/home/screen/Icomesummarypage.dart';
import 'package:trusty/src/home/screen/expensesummarypage.dart';
import 'package:trusty/src/home/widget/appbar.dart';
import 'package:trusty/src/home/widget/tabs.dart';
import 'package:trusty/src/home/widget/transaction.dart';
import 'package:trusty/src/home/widget/walletbox.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.1),
        child: CustomAppBar(width: width),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        shape: CircleBorder(),
        onPressed: () {
          Get.to(AddMoneyPage());
        },
        child: Icon(FontAwesomeIcons.plus, color: white),
      ),
      bottomNavigationBar: CustomAppBottomBarHome(height: height, width: width),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Summary", style: textblackmediumBold),
                    Icon(FontAwesomeIcons.sliders, size: 20),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Row(
                  children: [
                    WalletBox(
                      ontap: () {
                        Get.to(Summarypage());
                      },
                      amount: "20000.00CFA",
                      width: width * 0.42,
                      height: height * 0.17,
                      topIcon: FontAwesomeIcons.faceSmileBeam,
                      title: "Income",
                      icon: FontAwesomeIcons.caretUp,
                      iconColor: green,
                    ),
                    WalletBox(
                      ontap: () {
                        Get.to(ExSummarypage());
                      },
                      amount: "20000.00CFA",
                      width: width * 0.42,
                      height: height * 0.17,
                      topIcon: FontAwesomeIcons.faceSmileBeam,
                      title: "Expenses",
                      icon: FontAwesomeIcons.caretDown,
                      iconColor: red,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    WalletBox1(
                      title: "Pockets",
                      width: width * 0.42,
                      height: height * 0.17,
                      topIcon: FontAwesomeIcons.faceSmileBeam,
                      titleBold: "3 Pockets",
                    ),
                    WalletBox1(
                      title: "Goals",
                      width: width * 0.42,
                      height: height * 0.17,
                      topIcon: FontAwesomeIcons.mapPin,
                      titleBold: "4 Goals",
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recent Transaction", style: textblackmediumBold),
                      Row(
                        children: [
                          Text("All", style: textblackmedium),
                          SizedBox(width: width * 0.03),
                          Icon(
                            FontAwesomeIcons.chevronDown,
                            color: lightgray,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TransactionBox1(
                  width: width,
                  height: height,
                  transactionTitle:
                      "Mbibah Viani is def thee absolute best...............",
                  transactionDate: "05/05/25",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
