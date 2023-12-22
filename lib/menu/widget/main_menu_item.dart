import 'package:flutter/material.dart';

class MainMenuItem extends StatelessWidget {
  final int index;
  final onTap;
  const MainMenuItem({
    Key? key,
    required this.index,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const FlutterLogo(),
                Text('Menu $index'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
