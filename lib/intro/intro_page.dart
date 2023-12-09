import 'package:flutter/material.dart';
import 'package:penny_path/intro/intro_page_viewmodel.dart';
import 'package:penny_path/menu/menu_page.dart.dart';
import 'package:penny_path/intro/intro_widgets/intro_one.dart';
import 'package:penny_path/intro/intro_widgets/intro_three.dart';
import 'package:penny_path/intro/intro_widgets/intro_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<IntroPageViewModel>.reactive(
      viewModelBuilder: () => IntroPageViewModel(),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExpenseMapper(),
                              ),
                            );
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
