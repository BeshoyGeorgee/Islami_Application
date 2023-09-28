import 'package:flutter/material.dart';

class UnselectedOption extends StatelessWidget {
  final String UnselectedTitle;

  const UnselectedOption({super.key, required this.UnselectedTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(UnselectedTitle),
        )
      ],
    );
  }
}
