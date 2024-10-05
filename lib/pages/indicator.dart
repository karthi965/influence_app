import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({super.key, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 400),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 20.0 : 10.0,
      height: 8.0,
      decoration: BoxDecoration(
          color: isActive ? Color(0xff243c63) : Colors.red,
          borderRadius: BorderRadius.circular(8.0)),
    );
  }
}
