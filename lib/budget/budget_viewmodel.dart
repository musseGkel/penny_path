import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../services/snack_bar_services.dart';

class BudgetViewModel extends BaseViewModel {
  int _activeCategory = -1;

  BudgetViewModel(this.buildContext);
  int get activeCatagory => _activeCategory;
  late TextEditingController budgetNameController;
  late TextEditingController budgetAmountController;
  final BuildContext buildContext;

  List categories = [
    {
      "id": "1",
      "name": "Car",
      "icon": "assets/images/car.png",
      "amount": 123,
    },
    {
      "id": "2",
      "name": "Sacing",
      "icon": "assets/images/saving.png",
      "amount": 123
    },
    {
      "id": "3",
      "name": "Cash",
      "icon": "assets/images/cash.png",
      "amount": 123
    },
    {
      "id": "4",
      "name": "Charity",
      "icon": "assets/images/charity.png",
      "amount": 123
    },
    {
      "id": "5",
      "name": "Food",
      "icon": "assets/images/food.png",
      "amount": 123
    },
    {
      "id": "6",
      "name": "Gift",
      "icon": "assets/images/gift.png",
      "amount": 123,
    }
  ];

  editCatagory(int catagoryId) {
    _activeCategory = catagoryId;
    budgetNameController.clear();
    budgetNameController.text = categories[catagoryId]["name"];
    budgetAmountController.clear();
    budgetAmountController.text = categories[catagoryId]["amount"].toString();
    notifyListeners();
  }

  createCatagory(
    String budgetName,
    String budgetAmount,
  ) {
    budgetNameController.text = budgetName;
    budgetAmountController.text = budgetAmount;

    Map<String, dynamic> newCategory = {
      "name": budgetName,
      "icon": "assets/images/gift.png",
      "amount": budgetAmount,
    };

    categories.insert(0, newCategory);
    _activeCategory = 0;

    SnackbarService.show(
      context: buildContext,
      text: "Budget Created!",
    );
    notifyListeners();
  }

  modifyCatagory() {
    categories[_activeCategory]["name"] = budgetNameController.text;
    categories[_activeCategory]["amount"] = budgetAmountController.text;
    notifyListeners();
  }

  onModelReady() {
    budgetNameController = TextEditingController(text: "");
    budgetAmountController = TextEditingController(text: "");
  }

  @override
  void dispose() {
    budgetAmountController.dispose();
    budgetNameController.dispose();
    super.dispose();
  }
}
