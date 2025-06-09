import 'package:candy_app/decoration.dart';
import 'package:candy_app/src/home/controllers/transactioncontroller.dart';
import 'package:candy_app/src/home/screen/addgoals.dart';
import 'package:candy_app/src/home/model/transactionmodel.dart';
import 'package:candy_app/src/home/widgets/tab.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import for Timestamp and FieldValue

/// Adjust path as needed

class GoalsPages extends StatelessWidget {
  GoalsPages({super.key});

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
          Get.to(() => AddNewGoalPage());
        },
        elevation: 0,
        child: Icon(
          FontAwesomeIcons.plus,
          color: white,
        ),
      ),
      bottomNavigationBar: SearchNavBar(width: width, height: height),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                // Make Padding const
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10), // Added const
                child: Text(
                  "Goals",
                  style: textBlackLargeBold,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),

              // StreamBuilder for recent transactions (already implemented, but ensure it's here)
              StreamBuilder<List<GoalsModel>>(
                stream: transactionController.getUserGoals(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                        child:
                            CircularProgressIndicator()); // Added CircularProgressIndicator
                  }
                  if (snapshot.hasError) {
                    print(
                        "Error fetching goals: ${snapshot.error}"); // Changed 'transactions' to 'goals'
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: height * 0.1),
                        child: Text(
                          'No Goals yet. Add one!',
                          style: textBlackMedium,
                        ),
                      ),
                    );
                  }

                  final goals = snapshot.data!;
                  return ListView.builder(
                    // Use ListView.builder to display a list of goals
                    shrinkWrap: true, // Important for nested scrollables
                    physics:
                        NeverScrollableScrollPhysics(), // To prevent double scrolling
                    itemCount: goals.length,
                    itemBuilder: (context, index) {
                      final goal = goals[index]; // Get individual goal
                      return Container(
                        height: height * 0.175,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  goal.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: textBlackLargeBold,
                                ),
                                PopupMenuButton(
                                  itemBuilder: (context) {
                                    return [PopupMenuItem(child: Text("Hey"))];
                                    // return PopupMenuItem(child: Text("Hey"));
                                  },
                                )
                              ],
                            ),
                            Text(
                              goal.description ?? "",
                              style: textBlackMini,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "IDR ${goal.amount}",
                              style: textBlackMediumBold.copyWith(fontSize: 15),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
