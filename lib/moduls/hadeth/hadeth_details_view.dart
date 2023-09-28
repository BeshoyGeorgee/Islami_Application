import 'package:application_islami/moduls/hadeth/hadeth_view.dart';
import 'package:flutter/material.dart';

class HadethDetailsView extends StatefulWidget {
  static const String routName = "Hadeth_Details";

  HadethDetailsView({super.key});

  @override
  State<HadethDetailsView> createState() => _HadethDetailsViewState();
}

class _HadethDetailsViewState extends State<HadethDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)?.settings.arguments as HadethContent;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
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
              color: Color(0xffF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Text(arguments.title, style: theme.textTheme.bodyLarge),
              Divider(
                color: theme.primaryColor,
                indent: 50,
                endIndent: 50,
                thickness: 1.2,
                height: 10,
              ),
              Text(arguments.content, style: theme.textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
