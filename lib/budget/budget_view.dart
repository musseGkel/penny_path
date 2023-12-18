import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/budget/budget_viewmodel.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class BudgetView extends StatelessWidget {
  const BudgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BudgetViewModel>.reactive(
      viewModelBuilder: () => BudgetViewModel(),
      onViewModelReady: (viewModel) => viewModel.onModelReady(),
      builder: (BuildContext context, viewModel, Widget? child) {
        return const Scaffold();
      },
    );
  }
}
