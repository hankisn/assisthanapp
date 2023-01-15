import 'package:flutter/material.dart';

BottomNavigationBarItem homeMenuItem() {
  return const BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  );
}

BottomNavigationBarItem helpMenuItem() {
  return const BottomNavigationBarItem(
    icon: Icon(Icons.help),
    label: 'Help',
  );
}