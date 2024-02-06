import 'package:el_musico/routs.dart';
import 'package:el_musico/screens/onboard/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 690),
        minTextAdapt: true,
        builder: (context, child) {
          ScreenUtil.init(context);
          return MaterialApp(
            title: 'La Musico',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            routes: routes,
            initialRoute: OnBoardScreen.routeName,
          );
        });
  }
}
