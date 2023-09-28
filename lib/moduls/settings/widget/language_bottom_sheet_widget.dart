import 'package:application_islami/moduls/settings/widget/selected_option_widget.dart';
import 'package:application_islami/moduls/settings/widget/unselected_option_widget.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectedOptionWdiget(selectedItem: "English"),
          SizedBox(
            height: 50,
          ),
          UnselectedOption(UnselectedTitle: "عربي")
        ],
      ),
    );
  }
}
