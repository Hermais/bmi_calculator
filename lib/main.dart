import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

import 'my_app_page.dart';

void main() {
  runApp(
    MaterialApp(
      darkTheme: null,
      theme: themeData,
      home: const MyApp(),
    ),
  );
}
