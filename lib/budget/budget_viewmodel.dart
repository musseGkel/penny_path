import 'package:stacked/stacked.dart';

class BudgetViewModel extends BaseViewModel {
  int _activeCategory = 0;
  int get activeCatagory => _activeCategory;

  List categories = [
    {"name": "Car", "icon": "assets/images/car.png"},
    {"name": "Sacing", "icon": "assets/images/saving.png"},
    {"name": "Cash", "icon": "assets/images/cash.png"},
    {"name": "Charity", "icon": "assets/images/charity.png"},
    {"name": "Food", "icon": "assets/images/food.png"},
    {"name": "Gift", "icon": "assets/images/gift.png"}
  ];

  changeCatagory(int catagoryId) {
    _activeCategory = catagoryId;
    notifyListeners();
  }

  onModelReady() {}
}
