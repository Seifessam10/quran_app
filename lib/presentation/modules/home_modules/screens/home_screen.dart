import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/core/strings_manger.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/settings_tab/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsManger.mainBgLight), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringsManger.appTittle),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.quranIcon)),
                  label: StringsManger.quranLabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.hadithIcon)),
                  label: StringsManger.hadithLabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.sebhaIcon)),
                  label: StringsManger.sebhaLabel),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.radioIcon)),
                  label: StringsManger.radioLabel),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: StringsManger.settingsLabel),
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }
}
