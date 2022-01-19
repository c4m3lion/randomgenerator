// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  bool mainResult = false;
  var rng = Random();
  String txt = "Press button to get your answer!";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainResult ? Colors.green : Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  txt,
                  style: TextStyle(
                      fontSize: 100,
                      color: mainResult ? Colors.orangeAccent : Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ElevatedButton(
          child: Text("PRESS"),
          onPressed: () => {
            setState(() {
              rng.nextInt(2) == 1
                  ? {mainResult = true, txt = "YES"}
                  : {mainResult = false, txt = "NO"};
            })
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 100),
            primary: Colors.purple,
          ),
        ),
      ),
    );
  }
}
