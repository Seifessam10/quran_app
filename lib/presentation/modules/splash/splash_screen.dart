import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/core/routes_manger.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesManger.homeRoute);
    });
    return Scaffold(
      body: Image.asset(AssetsManger.lightSplashScreen),
    );
  }
}
