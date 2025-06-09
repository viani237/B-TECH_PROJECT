import 'package:candy_app/decoration.dart';
import 'package:candy_app/src/home/controllers/transactioncontroller.dart';
import 'package:candy_app/src/home/model/transactionmodel.dart';
import 'package:candy_app/src/home/screen/addpocket.dart';
import 'package:candy_app/src/home/widgets/popup.dart';
import 'package:candy_app/src/home/widgets/tab.dart';

import 'package:easy_pie_chart/easy_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PocketsPages extends StatelessWidget {
  PocketsPages({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    // Controllers are found/put here

    final TransactionsController transactionController =
        Get.put(TransactionsController());

    return Scaffold(
        backgroundColor: white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          shape: const OvalBorder(), // Use const for better performance
          onPressed: () {
            Get.to(() => AddNewPocketPage());
          },
          elevation: 0,
          child: Icon(
            FontAwesomeIcons.plus,
            color: white,
          ),
        ),
        bottomNavigationBar: BudgetNavBar(
          width: width,
          height: height,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                // Make Padding const
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Budgeting",
                  style: textBlackLargeBold,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),

              // StreamBuilder for recent transactions (already implemented, but ensure it's here)
              StreamBuilder<List<PocketsModel>>(
                  // stream: transactionController.getMonthlyExpenseTransactions(),
                  stream: transactionController.getUserPockets(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      print("Error fetching transactions: ${snapshot.error}");
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }
                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(
                          child: Padding(
                        padding: EdgeInsets.only(top: height * 0.1),
                        child: Text(
                          'No Pockets yet. Add one!',
                          style: textBlackMedium,
                        ),
                      ));
                    }

                    final pockets = snapshot.data!;
                    return ListView.builder(
                      // Use ListView.builder to display a list of goals
                      shrinkWrap: true, // Important for nested scrollables
                      physics:
                          NeverScrollableScrollPhysics(), // To prevent double scrolling
                      itemCount: pockets.length,
                      itemBuilder: (context, index) {
                        final pocket = pockets[index]; // Get individual goal
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    pocket.title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: textBlackLargeBold,
                                  ),
                                  CustomPopUp(
                                    PocketId:pocket.id ,
                                    width: width,
                                    height: height,
                                  )
                                  // PopupMenuButton(
                                  //   itemBuilder: (context) {
                                  //     return [
                                  //       PopupMenuItem(child: )
                                  //     ];
                                  //     // return PopupMenuItem(child: Text("Hey"));
                                  //   },
                                  // )
                                ],
                              ),
                              Container(
                                width: width * 1,
                                height: height * 0.005,
                                color: white,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                pocket.amount,
                                style:
                                    textBlackMediumBold.copyWith(fontSize: 20),
                              ),
                              Text(
                                pocket.description ?? "",
                                style: textBlackMini,
                              )
                            ],
                          ),
                        );
                      },
                    );
                  })
            ]))));
  }
}
