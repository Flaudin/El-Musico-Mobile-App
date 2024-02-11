import 'package:el_musico/models/playlist_model.dart';
import 'package:el_musico/screens/playlist/components/playlist_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class AlbumList extends StatefulWidget {
  const AlbumList({super.key});

  @override
  State<AlbumList> createState() => _AlbumListState();
}

class _AlbumListState extends State<AlbumList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: demoPlaylist.isEmpty
          ? const CircularProgressIndicator.adaptive()
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: ResponsiveGridList(
                  minItemWidth: 175.w,
                  minItemsPerRow: 2,
                  maxItemsPerRow: 3,
                  children: List.generate(
                      demoPlaylist.length,
                      (index) => PlayListCard(
                          title: demoPlaylist[index].title.toString().isNotEmpty
                              ? demoPlaylist[index].title.toString()
                              : 'Null',
                          numberOfSongs: demoPlaylist[index].numOfSongs != 0
                              ? demoPlaylist[index].numOfSongs
                              : 0,
                          image: demoPlaylist[index].image.toString().isNotEmpty
                              ? demoPlaylist[index].image.toString()
                              : 'Null',
                          date: demoPlaylist[index].date.toString().isNotEmpty
                              ? demoPlaylist[index].date.toString()
                              : 'Null',
                          tapped: () {}))),
            ),
    );
  }
}
