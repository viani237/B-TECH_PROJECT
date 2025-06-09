import 'package:candy_app/decoration.dart';
import 'package:candy_app/src/home/controllers/transactioncontroller.dart';
import 'package:candy_app/src/home/model/transactionmodel.dart';
import 'package:candy_app/src/home/screen/addtransaction.dart';
import 'package:candy_app/src/home/screen/pocketpage.dart';
import 'package:candy_app/src/home/screen/transactionpage.dart';
import 'package:candy_app/src/home/widgets/tab.dart';
import 'package:candy_app/src/home/widgets/walletbox.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
        // backgroundColor: primaryColor,
        shape: const OvalBorder(), // Use const for better performance
        onPressed: () {
          Get.to(() => AddNewTransactionPage());
        },
        elevation: 0,
        child: Icon(FontAwesomeIcons.plus),
      ),
      bottomNavigationBar: HomeNavBar(width: width, height: height),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.55,
                // height: height * 0.7,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: lightWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      // Make Padding const
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        "Overview",
                        style: textBlackLargeBold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: height * 0.45,
                        width: width * 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // --- StreamBuilder for Income ---
                                    StreamBuilder<double>(
                                      stream: transactionController
                                          .getTotalMonthlyIncome(),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          // return const CircularProgressIndicator();
                                        }
                                        final income = snapshot.data ?? 0.0;
                                        return MoneyBox(
                                          iconColor: green,
                                          height: height,
                                          width: width,
                                          title: "Income",
                                          amount: income
                                              .toStringAsFixed(2), // Format

                                          icon: FontAwesomeIcons
                                              .coins, // Or arrowUp
                                        );
                                      },
                                    ),
                                    // --- StreamBuilder for Expenses ---
                                    StreamBuilder<double>(
                                      stream: transactionController
                                          .getTotalMonthlyExpenses(),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          // return const CircularProgressIndicator();
                                        }
                                        final expenses = snapshot.data ?? 0.0;
                                        return MoneyBox(
                                          height: height,
                                          iconColor: red,
                                          width: width,
                                          title: "Expenses",
                                          amount: expenses
                                              .toStringAsFixed(2), // Format

                                          icon: FontAwesomeIcons
                                              .coins, // Or arrowDown
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // --- StreamBuilder for Income ---

                                    StreamBuilder<List<PocketsModel>>(
                                      stream: transactionController
                                          .getUserPockets(),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          return MoneyBox(
                                            height: height,
                                            width: width,
                                            title: "Pockets",
                                            amount: "...", // Indicate loading
                                            iconColor: black,
                                            icon: FontAwesomeIcons.coins,
                                          );
                                        }
                                        if (snapshot.hasError) {
                                          print(
                                              "Error fetching goals: ${snapshot.error}");
                                          return MoneyBox(
                                            height: height,
                                            width: width,
                                            title: "Pockets",
                                            amount: "Error",
                                            iconColor: black,
                                            icon: FontAwesomeIcons
                                                .eraser, // Error icon
                                          );
                                        }
                                        if (!snapshot.hasData ||
                                            snapshot.data!.isEmpty) {
                                          return MoneyBox(
                                            height: height,
                                            width: width,
                                            title: "Pockets",
                                            amount:
                                                "0", // Display 0 if no goals
                                            iconColor: black,
                                            icon: FontAwesomeIcons.bullseye,
                                          );
                                        }

                                        // If we reach here, snapshot.hasData is true and snapshot.data is not empty
                                        final int goalsCount =
                                            snapshot.data!.length;

                                        return MoneyBox(
                                          iconColor: Colors.deepOrangeAccent,
                                          height: height,
                                          width: width,
                                          title: "Pockets",
                                          amount: goalsCount
                                              .toString(), // Display the count

                                          icon: FontAwesomeIcons
                                              .wallet, // A relevant icon for goals
                                        );
                                      },
                                    ),
                                    //       // --- StreamBuilder for Expenses ---
                                    StreamBuilder<List<GoalsModel>>(
                                      stream:
                                          transactionController.getUserGoals(),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          return MoneyBox(
                                            height: height,
                                            width: width,
                                            title: "Goals",
                                            amount: "...", // Indicate loading
                                            iconColor: black,
                                            icon: FontAwesomeIcons.coins,
                                          );
                                        }
                                        if (snapshot.hasError) {
                                          print(
                                              "Error fetching goals: ${snapshot.error}");
                                          return MoneyBox(
                                            height: height,
                                            width: width,
                                            title: "Goals",
                                            amount: "Error",
                                            iconColor: black,
                                            icon: FontAwesomeIcons
                                                .solidFlag, // Error icon
                                          );
                                        }
                                        if (!snapshot.hasData ||
                                            snapshot.data!.isEmpty) {
                                          return MoneyBox(
                                            height: height,
                                            width: width,
                                            title: "Goals",
                                            amount:
                                                "0", // Display 0 if no goals
                                            iconColor: black,
                                            icon: FontAwesomeIcons.flag,
                                          );
                                        }

                                        // If we reach here, snapshot.hasData is true and snapshot.data is not empty
                                        final int goalsCount =
                                            snapshot.data!.length;

                                        return MoneyBox(
                                          height: height,
                                          width: width,
                                          title: "Goals",
                                          amount: goalsCount
                                              .toString(), // Display the count
                                          iconColor: Colors.deepPurpleAccent,
                                          icon: FontAwesomeIcons.solidFlag,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(color: lightWhite),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Transactions",
                      style: textBlackMediumBold,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => BudgetPage());
                      },
                      child: Text(
                        "View all",
                        style: textGreyMedium,
                      ),
                    )
                  ],
                ),
              ),
              // StreamBuilder for recent transactions (already implemented, but ensure it's here)
              StreamBuilder<List<TransactionsModel>>(
                // stream: transactionController.getMonthlyExpenseTransactions(),
                stream: transactionController.getUserTransaction(),
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
                        'No transactions yet. Add one!',
                        style: textBlackMedium,
                      ),
                    ));
                  }

                  final transactions = snapshot.data!;

                  // It's good practice to limit the number of recent transactions displayed here
                  // For example, show only the top 5
                  final recentTransactions =
                      transactions.take(5).toList(); // Show top 5

                  return Column(
                    children: recentTransactions.map((transaction) {
                      // Color transactionColor =
                      //     transaction.category == 'income' ? Colors.green : red;
                      // IconData transactionIcon =
                      //     transaction.category == 'income'
                      //         ? FontAwesomeIcons.arrowUp
                      //         : FontAwesomeIcons.arrowDown;
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height * 0.003, horizontal: width * 0.02),
                        child: Container(
                          decoration: BoxDecoration(
                              color: lightWhite,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: height * 0.01),
                                  child: Container(
                                    width: width * 0.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          transaction.title,
                                          style: textBlackMediumBold.copyWith(
                                              fontSize: 15.5),
                                        ),
                                        SizedBox(
                                          height: height * 0.009,
                                        ),
                                        Text(
                                          transaction.formattedTransactionDate,
                                          style: textBlackMini.copyWith(
                                              color: lightGrey),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );

                      // return TransactionBox1(
                      //   height: height,
                      //   width: width,
                      //   type: transaction
                      //       .displayCategory, // Use the displayCategory getter
                      //   amount: transaction.amount, // Still a String from model
                      //   color: transactionColor,
                      //   date: transaction
                      //       .formattedCreationTime, // Use formattedCreationTime

                      //   icon: transactionIcon,
                      // );
                    }).toList(),
                  );
                },
              ),
              SizedBox(
                height: height * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
