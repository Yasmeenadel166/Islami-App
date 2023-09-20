import 'package:flutter/material.dart';
import 'package:islami_project/ui/ChapterDetails/ChapterDetailsScreen.dart';
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
      theme: ThemeData(
        cardTheme: CardTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 18,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)
          )
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
          )
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white ,
          selectedIconTheme: IconThemeData(
            size: 32
          ),
          unselectedLabelStyle: TextStyle(color: Colors.white)
        ),
        scaffoldBackgroundColor: Colors.transparent,
        //primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB7935F),
        primary: Color(0xFFB7935F),
          secondary: Color(0x87B7935F),
          onPrimary: Colors.white,
          onSecondary: Colors.black
        ),
        useMaterial3: true
      ),
      routes: {
        HomeScreen.routeName : (_) => HomeScreen(),
        ChapterDetailsScreen.routeName : (_) => ChapterDetailsScreen(),
      },
      initialRoute:  HomeScreen.routeName,
    );
  }
}
