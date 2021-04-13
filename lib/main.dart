import 'package:ex_ui_demo/header_section.dart';
import 'package:ex_ui_demo/top_icon_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'billing_suggestion_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                HeaderSection(),
                Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(16),
                  children: [
                    TopIconSection(),
                    BillingSuggestionSection()
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
