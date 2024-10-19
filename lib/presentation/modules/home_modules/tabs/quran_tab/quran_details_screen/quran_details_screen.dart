import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/quran_tab/quran_details_screen/widgets/verse_widget.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/quran_tab/quran_tab.dart';

class QuranDetailsScreen extends StatefulWidget {
  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    // ModalRoute.of(context)?.settings.arguments   --> Receive data from files
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;

    if (verses.isEmpty) readQuranFile(suraItem.index + 1);
    return Stack(
      children: [
        Image.asset(
          AssetsManger.mainBgLight,
          fit: BoxFit.fill,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(suraItem.suraName),
            ),
            body: verses.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemBuilder: (context, index) =>
                        VerseWidget(verse: verses[index]),
                    itemCount: verses.length,
                  )),
      ],
    );
  }

  // sync -> block thread
  void readQuranFile(int index) async {
    // how to read a textFile?
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');

    // trim -> remove white spaces in suraTextFiles
    // .split()   -> split sura in lines

    verses = fileContent.trim().split('\n');

    // verses.forEach((element) {
    //   print(element);
    // });

    setState(() {});
  }
}
