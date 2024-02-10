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
      body: ResponsiveGridList(
          minItemWidth: 175.w,
          minItemsPerRow: 2,
          maxItemsPerRow: 3,
          children: [
            ListView.separated(
                itemBuilder: (context, index) {
                  return PlayListCard(
                      title: demoPlaylist[index].title,
                      numberOfSongs: demoPlaylist[index].numOfSongs,
                      image: demoPlaylist[index].image,
                      date: demoPlaylist[index].date,
                      tapped: () {});
                },
                separatorBuilder: (context, index) {
                  return const SizedBox();
                },
                itemCount: demoPlaylist.length),
          ]),
    );
  }
}
