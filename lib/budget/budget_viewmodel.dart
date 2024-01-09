import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BudgetViewModel extends BaseViewModel {
  int _activeCategory = -1;
  int get activeCatagory => _activeCategory;
  late TextEditingController budgetName;
  late TextEditingController budgetAmount;

  List categories = [
    {"name": "Car", "icon": "assets/images/car.png", "amount": 123},
    {"name": "Sacing", "icon": "assets/images/saving.png", "amount": 123},
    {"name": "Cash", "icon": "assets/images/cash.png", "amount": 123},
    {"name": "Charity", "icon": "assets/images/charity.png", "amount": 123},
    {"name": "Food", "icon": "assets/images/food.png", "amount": 123},
    {"name": "Gift", "icon": "assets/images/gift.png", "amount": 123}
  ];

  changeCatagory(int catagoryId) {
    _activeCategory = catagoryId;
    budgetName.clear();
    budgetName.text = categories[catagoryId]["name"];
    budgetAmount.clear();
    budgetAmount.text = categories[catagoryId]["amount"].toString();
    notifyListeners();
  }

  createCatagory() {
    Map<String, dynamic> newCategory = {
      "name": "",
      "icon": "",
      "amount": "",
    };

    categories.add(newCategory);
    _activeCategory = categories.length - 1;
    notifyListeners();
  }

  modifyCatagory() {
    categories[_activeCategory]["name"] = budgetName.text;
    categories[_activeCategory]["amount"] = budgetAmount.text;
    notifyListeners();
  }

  onModelReady() {
    budgetName = TextEditingController(text: "");
    budgetAmount = TextEditingController(text: "");
  }
}
