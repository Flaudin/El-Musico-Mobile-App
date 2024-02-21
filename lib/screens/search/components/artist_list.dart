import 'package:el_musico/components/artist_card.dart';
import 'package:el_musico/constants.dart';
import 'package:el_musico/models/artist_model.dart';
import 'package:el_musico/services/artist_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class ArtistList extends StatefulWidget {
  const ArtistList({super.key});

  @override
  State<ArtistList> createState() => _ArtistListState();
}

class _ArtistListState extends State<ArtistList> {
  TextEditingController searchEditingController = TextEditingController();
  ArtistService artistService = ArtistService();
  //List<ArtistList> artistList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Artist>(
          future: artistService.getArtist(),
          builder: (context, AsyncSnapshot<Artist> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            final artist = snapshot.data!;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: ResponsiveGridList(
                  minItemWidth: 160.w,
                  maxItemsPerRow: 3,
                  minItemsPerRow: 2,
                  children: List.generate(
                      10,
                      (index) => ArtistCard(
                            name: artist.name,
                            nbAlbum: artist.nbAlbum,
                            nbFans: artist.nbFans,
                            picture: artist.picture,
                          ))),
            );
            // SingleChildScrollView(
            //     child: Column(children: [
            //   Expanded(
            //     child: ListView.builder(
            //       itemBuilder: (context, index) {
            //         final artist = snapshot.data!;
            //         return ArtistCard(
            //           name: artist.name,
            //           nbAlbum: artist.nbAlbum,
            //           nbFans: artist.nbFans,
            //           picture: artist.picture,
            //         );
            //       },
            //       //itemCount: snapshot.data!.,
            //     ),
            //   ),
            // ])
            //     //     Expanded(
            //     //       child: Padding(
            //     //         padding: EdgeInsets.symmetric(
            //     //             horizontal: 12.w, vertical: 12.h),
            //     //         child: TextFormField(
            //     //           controller: searchEditingController,
            //     //           decoration: InputDecoration(
            //     //             prefixIcon: const Icon(
            //     //               Icons.search_rounded,
            //     //               color: gray,
            //     //             ),
            //     //             hintText: 'Search here ...',
            //     //             contentPadding: EdgeInsets.symmetric(vertical: 4.h),
            //     //             border: OutlineInputBorder(
            //     //                 borderRadius: BorderRadius.circular(8.r),
            //     //                 borderSide:
            //     //                     BorderSide(color: dark, width: 1.5.w)),
            //     //             enabledBorder: OutlineInputBorder(
            //     //                 borderRadius: BorderRadius.circular(8.r),
            //     //                 borderSide:
            //     //                     BorderSide(color: dark, width: 1.5.w)),
            //     //           ),
            //     //         ),
            //     //       ),
            //     //     ),
            //     //     Expanded(
            //     //       child: ListView.builder(
            //     //         itemBuilder: (context, index) {
            //     //           final artist = snapshot.data!;
            //     //           return ArtistCard(
            //     //             name: artist.name,
            //     //             nbAlbum: artist.nbAlbum,
            //     //             nbFans: artist.nbFans,
            //     //             picture: artist.picture,
            //     //           );
            //     //         },
            //     //         //itemCount: snapshot.data!.,
            //     //       ),
            //     //     )
            //     //   ],
            //     // ),
            //     );
          }),
    );
  }
}
