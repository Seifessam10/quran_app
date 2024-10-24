import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/hadith_tab/hadith_tab.dart';

class HadithDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Hadith hadithArguments =
        ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsManger.mainBgLight), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  hadithArguments.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
                const Divider(
                  color: Colors.black,
                  height: 5,
                  thickness: 2,
                  indent: 40,
                  endIndent: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    hadithArguments.content,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
