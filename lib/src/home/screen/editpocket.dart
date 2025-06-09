import 'package:candy_app/decoration.dart';
import 'package:candy_app/src/auth/widget/auth_button.dart';
import 'package:candy_app/src/auth/widget/fields.dart';
import 'package:candy_app/src/home/controllers/transactioncontroller.dart';
import 'package:candy_app/src/home/model/transactionmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

// 1. Convert EditPocket to a StatefulWidget
class EditPocket extends StatefulWidget {
  final String pocket_id;

  const EditPocket({super.key, required this.pocket_id});

  @override
  State<EditPocket> createState() => _EditPocketState();
}

class _EditPocketState extends State<EditPocket> {
  final TransactionsController transactionController =
      Get.find<TransactionsController>(); // Get the controller instance

  PocketsModel? _pocketDetails; // Stores the fetched pocket data
  bool _isLoading = true; // Manages the loading state

  @override
  void initState() {
    super.initState();
    // 2. Call the asynchronous fetch method when the widget initializes
    _fetchPocketDetails();
  }

  // 3. Define the asynchronous method to fetch pocket details
  Future<void> _fetchPocketDetails() async {
    try {
      // Set loading to true to show a progress indicator
      setState(() {
        _isLoading = true;
      });

      // Call the getPocketDetails method from your TransactionsController
      final fetchedPocket =
          await transactionController.getPocketDetails(widget.pocket_id);

      // Ensure the widget is still mounted before calling setState
      if (mounted) {
        setState(() {
          _pocketDetails = fetchedPocket; // Store the fetched pocket
          _isLoading = false; // Set loading to false
        });

        // 4. Populate the TextEditingControllers if pocket details are found
        if (_pocketDetails != null) {
          transactionController
              .populatePocketControllersForEdit(_pocketDetails!);
        } else {
          // Handle the case where the pocket is not found
          Get.snackbar("Error", "Pocket not found for editing.",
              snackPosition: SnackPosition.BOTTOM);
          Get.back(); // Navigate back if pocket not found
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false; // Stop loading even on error
        });
      }
      Get.snackbar("Error", "Failed to load pocket details: $e",
          snackPosition: SnackPosition.BOTTOM);
      print("Error loading pocket details: $e");
      Get.back(); // Navigate back on error
    }
  }

  @override
  Widget build(BuildContext context) {
    // 5. Show a loading indicator while data is being fetched
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // If _pocketDetails is still null after loading, display an error message
    // (This case should ideally be handled by Get.back() in _fetchPocketDetails)
    if (_pocketDetails == null) {
      return Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(
          child: Text("Could not load pocket details."),
        ),
      );
    }

    // 6. Build the form using the populated controllers
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text(
          "Edit Pocket",
          style: textBlackMedium,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: black,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: lightWhite,
              radius: MediaQuery.of(context).size.width * 0.25,
              child: Icon(
                FontAwesomeIcons.wallet,
                size: 70,
              ),
            ),

            Field_Title(Title: "Title"),
            CustomTextField(
                hint: "Name of the transaction(Food) ",
                controller: transactionController.updatePocketTitleController),
            Field_Title(Title: "Amount"),
            CustomTextField(
                hint: "Name of the transaction(Food) ",
                controller: transactionController.updatePocketAmountController),
            Field_Title(Title: "Description"),
            CustomTextField(
                hint: "Name of the transaction(Food) ",
                controller:
                    transactionController.updatePocketDescriptionController),

            SizedBox(
              height: height * 0.05,
            ),
            CustomBtn(
                height: height * 0.075,
                width: width,
                ontap: () {
                  transactionController.updatePocket(widget.pocket_id);
                },
                btnColor: primaryColor,
                btnstyle: textWhiteMedium,
                btnTitle: "Edit Pocket")
            // CustomBtn(height:  MediaQuery, width: width, ontap: ontap, btnColor: btnColor, btnstyle: btnstyle, btnTitle: btnTitle)
          ],
        ),
      ),
    );
  }
}
