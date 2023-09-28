import 'package:application_islami/core/theme/application_theme.dart';
import 'package:application_islami/moduls/quran/quran_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routName = "Quran_Details";

  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (content.isEmpty) readFiles(arguments.suraNumber);
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ApplicationTheme.isDark
                  ? "assets/images/dark_bg.png"
                  : "assets/images/default_bg.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 120),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.6),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("سورة ${arguments.suraName}",
                      style: theme.textTheme.bodyLarge!
                          .copyWith(color: theme.colorScheme.primary)),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: Colors.black,
                  )
                ],
              ),
              Divider(
                color: theme.primaryColor,
                indent: 50,
                endIndent: 50,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");

    setState(() {
      content = text;
    });
    print(text);
  }
}
