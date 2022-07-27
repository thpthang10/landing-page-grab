import 'dart:math';

import 'package:flutter/material.dart';
import 'package:landing_page_grab/page/landing_page/landing_page.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GrapNhonTrachGiaRe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}
