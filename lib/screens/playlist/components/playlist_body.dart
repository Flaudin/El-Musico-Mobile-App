import 'package:el_musico/constants.dart';
import 'package:el_musico/models/playlist_model.dart';
import 'package:el_musico/screens/playlist/components/playlist_card.dart';
import 'package:el_musico/screens/playlist/components/playlist_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class PlaylistBody extends StatefulWidget {
  const PlaylistBody({super.key});

  @override
  State<PlaylistBody> createState() => _PlaylistBodyState();
}

class _PlaylistBodyState extends State<PlaylistBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Library",
          style: TextStyle(fontSize: xl, fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Expanded(
            //   child: SizedBox(
            //     height: 12.h,
            //     width: double.infinity,
            //     child: Row(
            //       children: [
            //         TextFormField(
            //           decoration: InputDecoration(
            //               prefixIcon: const Icon(
            //                 Icons.search,
            //                 color: gray,
            //               ),
            //               border: OutlineInputBorder(
            //                   borderRadius: BorderRadius.circular(4.r))),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Expanded(
              child: ResponsiveGridList(
                  minItemWidth: 112.w,
                  maxItemsPerRow: 3,
                  minItemsPerRow: 2,
                  children: List.generate(
                      demoPlaylist.length,
                      (index) => PlayListCard(
                            title: demoPlaylist[index].title,
                            numberOfSongs: demoPlaylist[index].numOfSongs,
                            image: demoPlaylist[index].image,
                            date: demoPlaylist[index].date,
                            tapped: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const PlayListPlayer();
                              }));
                            },
                          ))),
            )
          ],
        ),
      ),
    );
  }
}
