import 'package:flutter/material.dart';
import 'package:islami_project/ui/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islami_project/ui/HadethDetails/HadethDetailsScreen.dart';
import 'package:islami_project/ui/MyThemeData.dart';
import 'package:islami_project/ui/home/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routeName : (_) => HomeScreen(),
        ChapterDetailsScreen.routeName : (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName  : (_) => HadethDetailsScreen(),
      },
      initialRoute:  HomeScreen.routeName,
    );
  }
}
