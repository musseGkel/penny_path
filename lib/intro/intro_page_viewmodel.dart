import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class IntroPageViewModel extends BaseViewModel {
  late PageController controller;

  bool _onLastPage = false;
  bool get onLastPage => _onLastPage;

  onModelReady() {
    controller = PageController();
  }

  onPageChanged(int index) {
    _onLastPage = index == 2;
    notifyListeners();
  }

  onSkip() {
    controller.jumpToPage(2);
  }

  goToNext() {
    controller.nextPage(
      duration: const Duration(
        milliseconds: 100,
      ),
      curve: Curves.decelerate,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
