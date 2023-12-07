import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: const Center(
        child: Text(
          "Page 1",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
