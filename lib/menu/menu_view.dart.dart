import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:penny_path/app/app_router.gr.dart';
import 'package:penny_path/menu/widget/main_menu_item.dart';

@RoutePage()
class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7A9E9F),
        leading: GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(const SettingView());
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Initicon(
              text: "Full Name",
              elevation: 4,
            ),
          ),
        ),
        title: const Text(
          "PennyPath",
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.75,
          ),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return MainMenuItem(
              index: index,
            );
          },
        ),
      ),
    );
  }
}
