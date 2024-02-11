import 'package:el_musico/constants.dart';
import 'package:el_musico/screens/home/components/home_body.dart';
import 'package:el_musico/screens/hotlist/components/hotlist_body.dart';
import 'package:el_musico/screens/playlist/components/playlist_body.dart';
import 'package:el_musico/screens/search/components/search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  void onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light, statusBarColor: dark),
      child: Scaffold(
        body: Container(
          child: pages.elementAt(currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: dark,
            unselectedItemColor: darkgray,
            unselectedLabelStyle: const TextStyle(color: darkgray),
            currentIndex: currentIndex,
            onTap: onItemTap,
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.music), label: 'Home'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.searchengin
                      //color: gray,
                      ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.library_music_outlined,
                    // color: gray,
                  ),
                  label: 'Library'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.fireFlameCurved),
                  label: 'Hotlist'),
            ]),
      ),
    );
  }
}

List<Widget> pages = <Widget>[
  const HomeBody(),
  const SearchBody(),
  const PlaylistBody(),
  const HotlistBody()
];
