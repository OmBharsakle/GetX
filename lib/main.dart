import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Counter App/View/CounterHomePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(scheme: FlexScheme.yellowM3),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.cyanM3),
        themeMode: ThemeMode.light,
        home: const CounterAddPage(),
      );
  }
}
