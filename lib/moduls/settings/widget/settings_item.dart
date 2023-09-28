import 'package:flutter/material.dart';

typedef SettingsOptionClicked = void Function();

class Settings_Item extends StatelessWidget {
  final String settingOptionTitle, selectedOption;
  final SettingsOptionClicked onOptionTaped;

  Settings_Item(
      {super.key,
      required this.settingOptionTitle,
      required this.onOptionTaped,
      required this.selectedOption});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          settingOptionTitle,
          textAlign: TextAlign.start,
          style: theme.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: onOptionTaped,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: mediaQuery.width,
            height: 50,
            //color: Colors.red,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: theme.primaryColor, width: 1.2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(selectedOption), Icon(Icons.arrow_drop_down)],
            ),
          ),
        ),
      ],
    );
  }
}
