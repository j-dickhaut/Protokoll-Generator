import 'package:flutter/material.dart';
import 'package:protokoll_generator/features/home/home_view.dart';
import 'package:protokoll_generator/features/new_case/new_case_view.dart';
import 'package:protokoll_generator/shared/theme/theme.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => HomeView(),
        '/new_case': (context) => NewCaseView(),
      },
      theme: primaryTheme,
    ),
  );
}
