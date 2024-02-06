import 'package:el_musico/screens/hotlist/components/hotlist_body.dart';
import 'package:flutter/material.dart';

class HotlistScreen extends StatelessWidget {
  static String routeName = '/hotlist';
  const HotlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HotlistBody(),
    );
  }
}
