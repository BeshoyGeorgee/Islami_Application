import 'package:application_islami/core/theme/application_theme.dart';
import 'package:flutter/material.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Image(image: AssetImage("assets/images/radio_image@3x.png")),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          "اذاعة القرأن الكريم",
          style: ApplicationTheme.isDark
              ? TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                )
              : TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous_sharp,
                color: theme.primaryColor, size: 45),
            SizedBox(width: 30),
            Icon(Icons.play_arrow_rounded, color: theme.primaryColor, size: 80),
            SizedBox(width: 30),
            Icon(Icons.skip_next_sharp, color: theme.primaryColor, size: 45),
          ],
        ),
      ],
    );
  }
}
