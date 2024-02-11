import 'package:el_musico/components/music_card.dart';
import 'package:el_musico/constants.dart';
import 'package:el_musico/models/music_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: dark, statusBarIconBrightness: Brightness.light),
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: light,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Text(
                    'La Musico',
                    style: TextStyle(
                        fontSize: xl * 1.2,
                        color: dark,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  ListTile(
                    leading: const FaIcon(
                      FontAwesomeIcons.solidMoon,
                      color: dark,
                    ),
                    title: Text(
                      'Dark Mode',
                      style: TextStyle(
                        fontSize: lg,
                        color: dark,
                      ),
                    ),
                    trailing:
                        Switch.adaptive(value: false, onChanged: (value) {}),
                  )
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: white,
          //automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "La Musico",
            style: TextStyle(
                color: dark, fontSize: xl, fontWeight: FontWeight.w500),
          ),
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 60.h),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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
                  hintText: 'Search here ...',
                  contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                  prefixIcon: const Icon(
                    Icons.search_outlined,
                    color: dark,
                  ),
                ),
                style: TextStyle(fontSize: lg, fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return MusicCard(music: demoMusics[index]);
                  },
                  separatorBuilder: ((context, index) {
                    return const SizedBox();
                  }),
                  itemCount: demoMusics.length),
            ),
          ],
        ),
      ),
    );
  }
}
