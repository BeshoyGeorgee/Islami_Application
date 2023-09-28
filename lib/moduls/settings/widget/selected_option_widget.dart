import 'package:flutter/material.dart';

class SelectedOptionWdiget extends StatelessWidget {
  final String selectedItem;

  const SelectedOptionWdiget({super.key, required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("English"),
          Icon(Icons.check),
        ],
      ),
    );
  }
}
