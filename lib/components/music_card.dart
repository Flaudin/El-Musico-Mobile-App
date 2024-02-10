// ignore_for_file: must_be_immutable

import 'package:el_musico/components/player.dart';
import 'package:el_musico/constants.dart';
import 'package:el_musico/models/music_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({super.key, required this.music});

  final Music music;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: const MusicPlayer(),
                type: PageTransitionType.bottomToTop));
      },
      leading: Text(
        music.id.toString(),
        style: GoogleFonts.inter(color: dark, fontSize: sm),
        //TextStyle(color: dark, fontSize: sm),
      ),
      title: Text(
        music.title,
        style: GoogleFonts.inter(
            color: dark, fontSize: lg, fontWeight: FontWeight.w700),
        // TextStyle(color: dark, fontSize: lg, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        "${music.singer} • ${music.time}",
        style: GoogleFonts.inter(
          color: darkgray,
          fontSize: sm,
        ),
        //TextStyle(color: darkgray, fontSize: sm),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz_rounded,
            color: darkgray,
          )),
    );
  }
}
