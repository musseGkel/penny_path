import 'package:flutter/material.dart';

class MainMenuItem extends StatelessWidget {
  final int index;
  const MainMenuItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: Text(
          'Item $index',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
