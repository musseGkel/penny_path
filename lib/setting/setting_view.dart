import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/app/app_router.gr.dart';
import 'package:penny_path/setting/setting_viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'widgets/setting_tile.dart';

@RoutePage()
class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingViewModel>.reactive(
      viewModelBuilder: () => SettingViewModel(),
      onViewModelReady: (viewModel) => viewModel.onModelReady(),
      builder: (BuildContext context, viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back),
              ),
              title: const Text("Settings"),
              centerTitle: true),
          body: ListView(
            children: [
              const SettingTile(
                leadingIcon: Icon(CupertinoIcons.person),
                title: 'Account',
              ),
              const SettingTile(
                leadingIcon: Icon(CupertinoIcons.bell),
                title: 'Notifications',
              ),
              const SettingTile(
                leadingIcon: Icon(
                  CupertinoIcons.eye,
                ),
                title: 'Appearance',
              ),
              const SettingTile(
                leadingIcon: Icon(CupertinoIcons.lock),
                title: 'Pricacy and Security',
              ),
              SettingTile(
                leadingIcon: const Icon(CupertinoIcons.info),
                title: 'About',
                onTap: () {
                  AutoRouter.of(context).push(const AboutView());
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
