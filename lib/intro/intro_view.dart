import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/app/app_router.gr.dart';
import 'package:penny_path/intro/intro_page_viewmodel.dart';
import 'package:penny_path/intro/intro_widgets/intro_one.dart';
import 'package:penny_path/intro/intro_widgets/intro_three.dart';
import 'package:penny_path/intro/intro_widgets/intro_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<IntroViewModel>.reactive(
      viewModelBuilder: () => IntroViewModel(),
      onViewModelReady: (viewModel) => viewModel.onModelReady(),
      builder: (BuildContext context, viewModel, Widget? child) {
        return Scaffold(
            body: Stack(
          children: [
            PageView(
              controller: viewModel.controller,
              onPageChanged: viewModel.onPageChanged,
              children: const [
                Intro1(),
                Intro2(),
                Intro3(),
              ],
            ),
            Container(
              alignment: const Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Opacity(
                    opacity: viewModel.onLastPage ? 0.0 : 1,
                    child: GestureDetector(
                      onTap: viewModel.onSkip,
                      child: const Text("Skip"),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: viewModel.controller,
                    count: 3,
                  ),
                  GestureDetector(
                    onTap: viewModel.onLastPage
                        ? () {
                          
                            AutoRouter.of(context).push(const MenuView());
                          }
                        : viewModel.goToNext,
                    child: Text(viewModel.onLastPage ? "Done" : "Next"),
                  ),
                ],
              ),
            )
          ],
        ));
      },
    );
  }
}
