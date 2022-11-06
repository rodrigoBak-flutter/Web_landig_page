import 'package:web_landing_page/src/my_web_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';


/*
  platformViewRegistry va a lanzar un error, pero aun asi funciona. Es algo que con el tiempo solucionaran en Flutter

 */
void main() {
  setPathUrlStrategy();
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter - Web",
        home: MyWebPage(),
      ),
    ),
  );
}
