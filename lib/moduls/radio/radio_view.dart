import 'package:application_islami/core/theme/application_theme.dart';
import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset(
              ApplicationTheme.isDark
                  ? "assets/images/body_sebha_dark.png"
                  : "assets/images/body_sebha_logo.png",
            ),
          ),
          SizedBox(
            height: 43,
          ),
          Text("عدد التسبيحات", style: theme.textTheme.bodyLarge),
          Padding(
            padding: const EdgeInsets.only(top: 26),
            child: Container(
              decoration: BoxDecoration(
                  color: ApplicationTheme.isDark
                      ? theme.colorScheme.primary
                      : theme.primaryColor,
                  borderRadius: BorderRadius.circular(25)),
              height: 65,
              width: 80,
              child: Text(
                "0",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: ApplicationTheme.isDark
                    ? theme.colorScheme.onSecondary
                    : theme.primaryColor,
                borderRadius: BorderRadius.circular(30)),
            alignment: Alignment.center,
            width: 150,
            height: 50,
            child: Text("سبحان الله",
                style: ApplicationTheme.isDark
                    ? TextStyle(color: Colors.black)
                    : TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
