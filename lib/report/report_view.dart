import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/report/report_viewmodel.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReportViewModel>.reactive(
      viewModelBuilder: () => ReportViewModel(),
      onViewModelReady: (viewModel) => viewModel.onModelReady(),
      builder: (BuildContext context, viewModel, Widget? child) {
        return const Scaffold();
      },
    );
  }
}
