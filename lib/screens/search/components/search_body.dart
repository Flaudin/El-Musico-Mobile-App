import 'package:el_musico/constants.dart';
import 'package:el_musico/screens/search/components/album_list.dart';
import 'package:el_musico/screens/search/components/artist_list.dart';
import 'package:el_musico/screens/search/components/genre_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodState();
}

class _SearchBodState extends State<SearchBody>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
            statusBarColor: dark, statusBarIconBrightness: Brightness.light),
        child: Scaffold(
          appBar: AppBar(
              title: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: dark, width: 1.5.w)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: dark, width: 1.5.w)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(color: dark, width: 1.5.w)),
                    hintText: 'Search songs here ...',
                    contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      color: dark,
                    ),
                    suffixIcon: const Icon(
                      Icons.close_outlined,
                      color: dark,
                    )),
                style: TextStyle(fontSize: lg, fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
              bottom: TabBar(
                controller: tabController,
                labelColor: dark,
                unselectedLabelColor: gray,
                indicatorColor: dark,
                tabs: const [
                  Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.person,
                    ),
                    text: 'Artist',
                  ),
                  Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.compactDisc,
                    ),
                    text: 'Album',
                  ),
                  Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.music,
                    ),
                    text: 'Genre',
                  )
                ],
              )),
          body: TabBarView(
              controller: tabController,
              children: const [ArtistList(), AlbumList(), GenreList()]),
        ));
  }
}
