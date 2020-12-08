import 'package:flutter/material.dart';
import 'package:weather_now/scenes/mainScene.dart';

import 'functions/common_functions.dart';

void main() {
  runApp(mainApp());
}

class mainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather now",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: createMaterialColor(Color(0xFF000000)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScene(),
    );
  }
}
