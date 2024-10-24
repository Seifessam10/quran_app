import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/core/colors_manger.dart';

class QuranColumnHeader extends StatelessWidget {
  const QuranColumnHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
        color: Theme.of(context).dividerColor,
        width: 2,
      ))),
      child: IntrinsicHeight(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              AppLocalizations.of(context)!.chapterName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            )),
            VerticalDivider(
              color: ColorsManger.lightThemeColor,
              thickness: 3,
            ),
            Expanded(
                child: Text(AppLocalizations.of(context)!.versesNumber,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium)),
          ],
        ),
      ),
    );
  }
}
