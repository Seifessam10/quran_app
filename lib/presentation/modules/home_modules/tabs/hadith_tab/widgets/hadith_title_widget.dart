import 'package:flutter/material.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/hadith_tab/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  Hadith hadith;

  HadithTitleWidget({required this.hadith});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Text(
        hadith.title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
