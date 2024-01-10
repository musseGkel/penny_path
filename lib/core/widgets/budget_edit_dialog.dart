import 'package:flutter/material.dart';
import 'package:penny_path/core/widgets/common_button.dart';
import 'package:penny_path/theme/colors.dart';

class BudgetEditDialog extends StatefulWidget {
  final Function(String budgetName, String budgetAmount) onSave;

  const BudgetEditDialog({
    super.key,
    required this.onSave,
  });

  @override
  State<BudgetEditDialog> createState() => _BudgetEditDialogState();
}

class _BudgetEditDialogState extends State<BudgetEditDialog> {
  late TextEditingController budgetNameController;
  late TextEditingController budgetAmountController;

  @override
  void initState() {
    budgetNameController = TextEditingController();
    budgetAmountController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        print("budgetNameController: ${budgetNameController.text}");
        print("budgetAmountController: ${budgetAmountController.text}");

        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("Edit/Create a Budget"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          TextField(
                            onChanged: (value) {
                              setState(() {});
                            },
                            controller: budgetNameController,
                            cursorColor: black,
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: black),
                            decoration: const InputDecoration(
                              label: Text(
                                "Enter Budget Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff67727d),
                                ),
                              ),
                              hintText: "Ex. Gas",
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          TextField(
                            onChanged: (value) {
                              setState(() {});
                            },
                            controller: budgetAmountController,
                            cursorColor: black,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                            decoration: const InputDecoration(
                              label: Text(
                                "Enter Budget Amount",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff67727d),
                                ),
                              ),
                              hintText: "Ex. 123",
                              border: InputBorder.none,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: CommonButton(
                    isDisabled: budgetAmountController.text.isEmpty ||
                        budgetNameController.text.isEmpty,
                    backgroundColor: white,
                    text: "Save",
                    textStyle: const TextStyle(
                      color: black,
                      fontSize: 20,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      height: 1.55,
                    ),
                    onTap: () {
                      print(
                          "Before Save - budgetNameController: ${budgetNameController.text}");
                      print(
                          "Before Save - budgetAmountController: ${budgetAmountController.text}");

                      widget.onSave(
                        budgetNameController.text,
                        budgetAmountController.text,
                      );
                      Navigator.pop(context);
                      print("-----------Saved!---------");
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
