import 'package:el_musico/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool isFav = true;
  bool isPlaying = true;

  @override
  void initState() {
    isFav = false;
    isPlaying = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: dark,
            )),
        centerTitle: true,
        title: Text(
          "Now Playing",
          style:
              TextStyle(fontSize: xl, color: dark, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.queue_music_rounded,
                color: dark,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: Column(
          children: [
            Card(
              elevation: 46,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.r)),
              child: Image.network(
                'https://images.genius.com/962315c7fc90461f3a43daf1d2643b79.1000x1000x1.png',
                height: 260.h,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        isFav = !isFav;
                      });
                    },
                    icon: Icon(
                      isFav ? Icons.favorite_border_rounded : Icons.favorite,
                      color: gray,
                    )),
                Column(
                  children: [
                    Text(
                      "Kahit Ano",
                      style: TextStyle(
                          color: dark,
                          fontSize: header,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "Singer",
                      style: TextStyle(
                          color: gray,
                          fontSize: xl,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz_rounded,
                      color: gray,
                    ))
              ],
            ),
            SizedBox(
              height: 46.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.shuffle,
                      color: gray,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous_rounded,
                      color: dark,
                      size: 28.dm,
                    )),
                FloatingActionButton(
                    backgroundColor: dark,
                    shape: const CircleBorder(),
                    onPressed: () {
                      setState(() {
                        isPlaying = !isPlaying;
                      });
                    },
                    child: Icon(
                      isPlaying ? Icons.play_arrow_rounded : Icons.pause,
                      color: white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next_rounded,
                      color: dark,
                      size: 28.dm,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.repeat_rounded,
                      color: gray,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
