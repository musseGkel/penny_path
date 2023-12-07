import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: const Center(
        child: Text(
          "Page 3",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
