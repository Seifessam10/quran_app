import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/hadith_tab/widgets/hadith_header_widget.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/hadith_tab/widgets/hadith_title_widget.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) readHadithFile();
    return Container(
      child: Column(
        children: [
          Expanded(flex: 1, child: Image.asset(AssetsManger.hadithHeader)),
          HadithHeaderWidget(),
          Expanded(
            flex: 3,
            child: hadithList.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                    color: ColorsManger.lightThemeColor,
                  ))
                : ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                        color: ColorsManger.lightThemeColor,
                        height: 10,
                        thickness: 3),
                    itemBuilder: (context, index) =>
                        HadithTitleWidget(hadith: hadithList[index]),
                    itemCount: hadithList.length),
          )
        ],
      ),
    );
  }

  void readHadithFile() async {
    // we use async to make the function work parallel to the build function
    var fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithItemList = fileContent.split('#');

    for (int i = 0; i < hadithItemList.length; i++) {
      String hadithItem = hadithItemList[i];
      List<String> hadithLines = hadithItem.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      Hadith hadith = Hadith(title: title, content: content);
      hadithList.add(hadith);
    }

    setState(() {});
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}
