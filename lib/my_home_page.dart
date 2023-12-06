import 'package:flutter/material.dart';
import 'package:penny_path/expense_mapper.dart';
import 'package:penny_path/intro_widgets/intro_one.dart';
import 'package:penny_path/intro_widgets/intro_three.dart';
import 'package:penny_path/intro_widgets/intro_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = index == 2;
            });
          },
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
              GestureDetector(
                child: const Text("Skip"),
                onTap: () {
                  _controller.jumpToPage(2);
                },
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
              ),
              GestureDetector(
                onTap: onLastPage
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExpenseMapper(),
                          ),
                        );
                      }
                    : () {
                        _controller.nextPage(
                          duration: const Duration(
                            milliseconds: 100,
                          ),
                          curve: Curves.decelerate,
                        );
                      },
                child: Text(onLastPage ? "Done" : "Next"),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
