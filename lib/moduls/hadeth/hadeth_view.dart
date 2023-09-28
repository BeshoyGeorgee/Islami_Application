import 'package:application_islami/moduls/hadeth/hadeth_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) readFile();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo@3x.png"),
        Divider(
          thickness: 2.5,
          endIndent: 20,
          indent: 20,
          height: 10,
        ),
        Text(
          "الاحاحيث",
          style: theme.textTheme.bodyMedium,
        ),
        Divider(
          thickness: 2.5,
          endIndent: 20,
          indent: 20,
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetailsView.routName,
                      arguments: HadethContent(
                          content: allHadethContent[index].content,
                          title: allHadethContent[index].title));
                },
                child: Text(allHadethContent[index].title)),
            itemCount: allHadethContent.length,
          ),
        ),
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString("assets/images/ahadeth.txt");
    List<String> allhadeth = text.split("#");

    for (int i = 0; i < allhadeth.length; i++) {
      String singleHadeth = allhadeth[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      HadethContent hadethContent =
          HadethContent(content: content, title: title);

      setState(() {
        allHadethContent.add(hadethContent);
      });

      print(title);
    }
  }
}

class HadethContent {
  final String title;
  final String content;

  HadethContent({required this.content, required this.title});
}
