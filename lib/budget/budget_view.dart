import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/budget/budget_viewmodel.dart';
import 'package:penny_path/core/widgets/catagory_item.dart';
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
    var size = MediaQuery.of(context).size;
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
                      viewModel.categories.length + 1,
                      (index) {
                        if (index < viewModel.categories.length) {
                          return CatagoryItem(
                            color: grey.withOpacity(0.15),
                            icon: viewModel.categories[index]["icon"],
                            label: viewModel.categories[index]["name"],
                            borderColor: viewModel.activeCatagory == index
                                ? primary
                                : Colors.transparent,
                            subLabel: "",
                            onTap: () {
                              viewModel.changeCatagory(index);
                            },
                          );
                        } else {
                          return CatagoryItem(
                            color: white,
                            icon: "assets/images/plus.png",
                            label: "Add Catagory",
                            subLabel: "add your choice",
                            onTap: () {
                              viewModel.changeCatagory(index);
                            },
                            borderColor: Colors.transparent,
                          );
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "budget name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xff67727d)),
                      ),
                      const TextField(
                        // controller: _budgetName,
                        cursorColor: black,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: black),
                        decoration: InputDecoration(
                            hintText: "Enter Budget Name",
                            border: InputBorder.none),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: (size.width - 140),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Enter budget",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: Color(0xff67727d)),
                                ),
                                TextField(
                                  // controller: _budgetPrice,
                                  cursorColor: black,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: black),
                                  decoration: InputDecoration(
                                      hintText: "Enter Budget",
                                      border: InputBorder.none),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
