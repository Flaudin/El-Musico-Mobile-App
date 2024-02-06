import 'package:el_musico/constants.dart';
import 'package:el_musico/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';

class OnBoardScreen extends StatefulWidget {
  static String routeName = '/onboard';
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(color: white),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 24.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            children: [
              const LineIcon.music(
                color: darkgray,
              ),
              Text(
                "La Musico",
                style: GoogleFonts.workSans(
                    fontSize: lg, color: gray, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 18.h,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, HomeScreen.routeName);
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(dark)),
              child: Text(
                "Get started",
                style: GoogleFonts.workSans(
                    fontSize: xl, color: light, fontWeight: FontWeight.w700),
                //TextStyle(color: light, fontSize: xl),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
