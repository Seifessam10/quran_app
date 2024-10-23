import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        buildSelectedItem('English'),
        const SizedBox(
          height: 10,
        ),
        buildUnSelectedItem('Arabic')
      ]),
    );
  }

  Widget buildSelectedItem(String selectedLanguage) {
    return Row(
      children: [
        Text(
          selectedLanguage,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Spacer(),
        Icon(
          Icons.check,
          color: ColorsManger.goldColor,
          size: 30,
        )
      ],
    );
  }

  Widget buildUnSelectedItem(String unSelectedLanguage) {
    return Text(
      unSelectedLanguage,
      style: Theme.of(context)
          .textTheme
          .displayMedium
          ?.copyWith(color: Colors.black),
    );
  }
}
