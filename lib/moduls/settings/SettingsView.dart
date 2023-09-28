import 'package:application_islami/moduls/settings/widget/language_bottom_sheet_widget.dart';
import 'package:application_islami/moduls/settings/widget/settings_item.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 80),
      child: Column(
        children: [
          Settings_Item(
            selectedOption: "English",
            settingOptionTitle: "Language",
            onOptionTaped: () {
              showaLanguageBottomSheet(context);
            },
          ),
          SizedBox(
            height: 40,
          ),
          Settings_Item(
            selectedOption: "Dark",
            settingOptionTitle: "Theme Mode",
            onOptionTaped: () {
              showaThemeBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }

  void showaLanguageBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }

  void showaThemeBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(),
    );
  }
}
