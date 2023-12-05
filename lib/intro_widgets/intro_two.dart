import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: const Center(
        child: Text(
          "Page 2",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
