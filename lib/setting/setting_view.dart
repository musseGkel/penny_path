import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/setting/setting_viewmodel.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingViewModel>.reactive(
      viewModelBuilder: () => SettingViewModel(),
      onViewModelReady: (viewModel) => viewModel.onModelReady(),
      builder: (BuildContext context, viewModel, Widget? child) {
        return const Scaffold();
      },
    );
  }
}
