import 'package:flutter/material.dart';
import 'package:penny_path/core/widgets/common_button.dart';
import 'package:penny_path/theme/colors.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
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
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          TextField(
                            // controller: viewModel.budgetName,
                            cursorColor: black,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: black),
                            decoration: InputDecoration(
                              label: Text(
                                "Enter Budget Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff67727d)),
                              ),
                              hintText: "Ex. Gas",
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          TextField(
                            // controller: viewModel.budgetAmount,
                            cursorColor: black,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                            decoration: InputDecoration(
                              label: Text(
                                "Enter Budget Amount",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff67727d)),
                              ),
                              hintText: "Ex. 123",
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
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
                      //   viewModel.modifyCatagory();
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
