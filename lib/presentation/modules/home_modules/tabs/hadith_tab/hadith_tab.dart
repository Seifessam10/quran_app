import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manger.dart';

class HadithTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Image.asset(AssetsManger.hadithHeader),
        ],
      ),
    );
  }
}
