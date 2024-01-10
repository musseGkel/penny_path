import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/budget/budget_viewmodel.dart';
import 'package:penny_path/core/widgets/catagory_item.dart';
import 'package:penny_path/core/widgets/budget_edit_dialog.dart';
import 'package:penny_path/core/widgets/common_button.dart';
import 'package:penny_path/theme/colors.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class BudgetView extends StatefulWidget {
  const BudgetView({super.key});

  @override
  State<BudgetView> createState() => _BudgetViewState();
}

class _BudgetViewState extends State<BudgetView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BudgetViewModel>.reactive(
      viewModelBuilder: () => BudgetViewModel(),
      onViewModelReady: (viewModel) => viewModel.onModelReady(),
      builder: (BuildContext context, viewModel, Widget? child) {
        return Scaffold(
          backgroundColor: grey,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: grey.withOpacity(0.01),
                        spreadRadius: 10,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        top: 70, right: 20, left: 20, bottom: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Create budget",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: black,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.search,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                  ),
                  child: Text(
                    "Choose category",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: black.withOpacity(0.5)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      viewModel.categories.length,
                      (index) {
                        return CatagoryItem(
                          color: grey.withOpacity(0.15),
                          icon: viewModel.categories[index]["icon"],
                          label: viewModel.categories[index]["name"],
                          borderColor: viewModel.activeCatagory == index
                              ? primary
                              : Colors.transparent,
                          subLabel:
                              "\$${viewModel.categories[index]["amount"]}",
                          onTap: () {
                            viewModel.editCatagory(index);
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 16,
                    ),
                    child: CommonButton(
                      backgroundColor: white,
                      text: "Add New Budget",
                      textStyle: const TextStyle(
                        color: black,
                        fontSize: 20,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                        height: 1.55,
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return BudgetEditDialog(
                              onSave: viewModel.createCatagory,
                            );
                          },
                        );
                      },
                    ),
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
