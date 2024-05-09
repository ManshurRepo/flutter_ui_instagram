import 'package:flutter/material.dart';

class ProfileNumber extends StatelessWidget {
  const ProfileNumber({
    super.key,
    required this.amount,
    required this.title,
  });
  final String amount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          amount,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}
