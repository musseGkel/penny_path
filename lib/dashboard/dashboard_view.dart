import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/dashboard/dashboard_viewmodel.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      onViewModelReady: (viewModel) => viewModel.onModelReady(),
      builder: (BuildContext context, viewModel, Widget? child) {
        return const Scaffold();
      },
    );
  }
}
