import 'package:assist_han_app/widget/assist_start.dart';
import 'package:flutter/material.dart';

void main() async => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ),
  routes: {
    '/': (context) => const AssistStart(),
  },
));