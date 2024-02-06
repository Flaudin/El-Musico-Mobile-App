import 'package:el_musico/screens/playlist/components/playlist_body.dart';
import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  static String routeName = '/playlist';
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PlaylistBody(),
    );
  }
}
