import 'package:el_musico/components/music_card.dart';
import 'package:el_musico/constants.dart';
import 'package:el_musico/models/music_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayListPlayer extends StatefulWidget {
  const PlayListPlayer({super.key});

  @override
  State<PlayListPlayer> createState() => _PlayListPlayerState();
}

class _PlayListPlayerState extends State<PlayListPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: dark,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  color: dark,
                )),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 120.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                        color: gray,
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: const [
                          BoxShadow(
                              color: light,
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 3))
                        ]),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Album • 8 songs • 2024',
                        style: TextStyle(fontSize: sm, color: gray),
                      ),
                      Text(
                        'Title',
                        style: TextStyle(
                            fontSize: xl * 1.75,
                            fontWeight: FontWeight.w800,
                            color: dark),
                      ),
                      Text(
                        'Singer',
                        style: TextStyle(
                            fontSize: lg,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationColor: gray,
                            color: gray),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      SizedBox(
                        width: 100.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              child: const Icon(
                                Icons.playlist_add_rounded,
                                color: gray,
                                size: 28,
                              ),
                            ),
                            GestureDetector(
                              child: const Icon(
                                Icons.download_outlined,
                                color: gray,
                                size: 28,
                              ),
                            ),
                            GestureDetector(
                              child: const Icon(
                                Icons.more_horiz_rounded,
                                color: gray,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle_outline_outlined,
                        color: white,
                      ),
                      label: Text(
                        'Play',
                        style: TextStyle(color: white, fontSize: lg),
                      ),
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(dark),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r)))),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shuffle_outlined,
                        color: dark,
                      ),
                      label: Text(
                        'Shuffle',
                        style: TextStyle(color: dark, fontSize: lg),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(light),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r)))),
                    ),
                  )
                ],
              ),
              ...List.generate(demoMusics.length,
                  (index) => MusicCard(music: demoMusics[index]))
            ],
          ),
        ),
      ),
    );
  }
}
