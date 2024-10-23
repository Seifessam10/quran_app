import 'package:flutter/material.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/settings_tab/widgets/language_bottom_sheet.dart';
import 'package:quran_app/presentation/modules/home_modules/tabs/settings_tab/widgets/theme_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Theme',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 2)),
                child: Text(
                  'Light',
                  style: Theme.of(context).textTheme.labelSmall,
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 2)),
                child: Text(
                  'English',
                  style: Theme.of(context).textTheme.labelSmall,
                )),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeBottomSheet(),
    );
  }
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context, builder: (context) => LanguageBottomSheet());
}
