import 'package:el_musico/screens/home/home_screen.dart';
import 'package:el_musico/screens/onboard/onboard_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardScreen.routeName: (context) => const OnBoardScreen(),
  HomeScreen.routeName: (context) => const HomeScreen()
};
