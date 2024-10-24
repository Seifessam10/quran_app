import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/routes_manger.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/quran_tab/quran_tab.dart';

class SuraNameWidget extends StatelessWidget {
  // String suraName;
  // String versesNum;

  SuraItem suraItem;

  SuraNameWidget({required this.suraItem});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManger.quranDetailScreen,
            arguments: suraItem);
      },
      // onDoubleTap: () {},
      // onLongPress: (){},
      child: IntrinsicHeight(
        child: Row(
          // textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Text(suraItem.suraName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium)),
            VerticalDivider(
              color: ColorsManger.lightThemeColor,
              thickness: 3,
            ),
            Expanded(
                child: Text(
              suraItem.versesNumber,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ))
          ],
        ),
      ),
    );
  }
}
