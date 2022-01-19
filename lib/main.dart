import 'package:flutter/material.dart';
import 'package:randomgenerator/pages/main_page.dart';

void main() {
  return runApp(
    MaterialApp(
      initialRoute: "/main_page",
      routes: {
        '/main_page': (context) => MainMenu(),
      },
    ),
  );
}
