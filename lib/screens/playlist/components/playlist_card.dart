// ignore_for_file: must_be_immutable

import 'package:el_musico/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayListCard extends StatefulWidget {
  PlayListCard(
      {super.key,
      required this.title,
      required this.numberOfSongs,
      required this.image,
      required this.date,
      required this.tapped});
  String title, date, image;
  Function? tapped;
  int numberOfSongs;

  @override
  State<PlayListCard> createState() => _PlayListCardState();
}

class _PlayListCardState extends State<PlayListCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.tapped as void Function()?,
      child: Container(
        decoration: BoxDecoration(
            color: white,
            border: Border.all(color: light),
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: const [
              BoxShadow(
                  color: light,
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 3))
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black12),
                    width: 140.w,
                    height: 100.h,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                widget.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, color: gray),
              ),
              Text(
                "${widget.numberOfSongs} songs",
                style: const TextStyle(color: grey),
              ),
              SizedBox(
                height: 12.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
