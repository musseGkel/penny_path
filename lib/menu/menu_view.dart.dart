import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/menu/widget/main_menu_item.dart';

@RoutePage()
class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PennyPath"),
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
