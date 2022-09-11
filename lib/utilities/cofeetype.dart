import 'package:flutter/material.dart';

class Cofeetype extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;

  const Cofeetype(
      {super.key, required this.coffeeType, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeeType,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
