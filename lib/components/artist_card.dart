// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ArtistCard extends StatefulWidget {
  ArtistCard(
      {super.key,
      required this.name,
      required this.nbAlbum,
      required this.nbFans,
      required this.picture});
  String name;
  String picture;
  int nbAlbum;
  int nbFans;

  @override
  State<ArtistCard> createState() => _ArtistCardState();
}

class _ArtistCardState extends State<ArtistCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(widget.picture),
          Text(widget.name),
          Text(widget.nbAlbum.toString()),
          Text(widget.nbFans.toString()),
        ],
      ),
    );
  }
}
