import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerHeading extends StatelessWidget {
  const DrawerHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      decoration: const BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.horizontal(right: Radius.circular(10))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.food_bank,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Text(
            "Cooking Up!",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
