import 'package:el_musico/components/music_card.dart';
import 'package:el_musico/constants.dart';
import 'package:el_musico/models/music_model.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(
                Icons.dark_mode_rounded,
                color: darkgray,
              ),
            )
          ],
        ),
      ),
      backgroundColor: light,
      appBar: AppBar(
        backgroundColor: light,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "La Musico",
          style:
              TextStyle(color: dark, fontSize: xl, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(demoMusics.length, (index) {
              return MusicCard(music: demoMusics[index]);
            })
          ],
        ),
      ),
    );
  }
}
