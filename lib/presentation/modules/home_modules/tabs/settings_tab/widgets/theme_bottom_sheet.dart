import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/core/colors_manger.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItem(AppLocalizations.of(context)!.light),
          const SizedBox(
            height: 10,
          ),
          buildUnSelectedItem(AppLocalizations.of(context)!.dark)
        ],
      ),
    );
  }

  Widget buildSelectedItem(String selectedTheme) {
    return Row(
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Spacer(),
        Icon(
          Icons.check,
          color: ColorsManger.lightThemeColor,
          size: 30,
        )
      ],
    );
  }

  Widget buildUnSelectedItem(String unSelectedTheme) {
    return Text(
      unSelectedTheme,
      style: Theme.of(context)
          .textTheme
          .displayMedium
          ?.copyWith(color: Colors.black),
    );
  }
}
