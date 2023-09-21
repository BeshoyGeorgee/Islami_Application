import 'package:application_islami/moduls/hadeth/hadeth_view.dart';
import 'package:application_islami/moduls/quran/quran_view.dart';
import 'package:application_islami/moduls/radio/radio_view.dart';
import 'package:application_islami/moduls/settings/SettingsView.dart';
import 'package:application_islami/moduls/tasbeh/tasbeh_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    RadioView(),
    TasbehView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_quran@3x.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth@3x.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_sebha@3x.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_radio@3x.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
        //body: ,
      ),
    );
  }
}
