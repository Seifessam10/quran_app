import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/core/assets_manger.dart';
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
          title: Text(AppLocalizations.of(context)!.appTitle),
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
                  label: AppLocalizations.of(context)!.quranTab),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.hadithIcon)),
                  label: AppLocalizations.of(context)!.hadithTab),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.sebhaIcon)),
                  label: AppLocalizations.of(context)!.sebhaTab),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetsManger.radioIcon)),
                  label: AppLocalizations.of(context)!.radioTab),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settingsTab),
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }
}
