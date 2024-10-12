import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class VerseWidget extends StatelessWidget {
  String verse;

  VerseWidget({required this.verse});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          verse,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
