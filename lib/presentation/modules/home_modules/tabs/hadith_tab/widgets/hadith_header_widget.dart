import 'package:flutter/material.dart';

class HadithHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: Theme.of(context).dividerColor, width: 3))),
      child: Text(
        'El Hadith',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
