import 'package:flutter/material.dart';
import 'package:penny_path/menu/widget/main_menu_item.dart';

class ExpenseMapper extends StatefulWidget {
  const ExpenseMapper({super.key});

  @override
  State<ExpenseMapper> createState() => _ExpenseMapperState();
}

class _ExpenseMapperState extends State<ExpenseMapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
