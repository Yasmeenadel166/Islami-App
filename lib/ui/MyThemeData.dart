

 import 'package:flutter/material.dart';

 class MyThemeData{
 static bool isDarkEnabled = false;
 static const Color lightPrimary = Color(0xFFB7935F); //Gold
 static const Color darkPrimary  = Color(0xFF141A2E); //Kohly
 static const Color darkSecondary = Color(0xFFFACC1D);  //selectedItem color yellow in bottomNavigationBar darkMode

 static ThemeData lightTheme = ThemeData(
     textTheme: const TextTheme(
       headlineSmall: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w600,
           color: Colors.black
       ) ,
       titleMedium: TextStyle(
         fontSize: 25,
         fontWeight: FontWeight.w400,
         color: Colors.black
     ),
       bodyMedium:  TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.w400,
           color: Colors.black
       )
   ),
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
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 25,)
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
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
          secondary: Color(0xFFB7935F),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
         background: Colors.white
      ),
      useMaterial3: true,
      dividerColor: lightPrimary ,
     bottomSheetTheme: const BottomSheetThemeData(
         backgroundColor: Colors.white
     )
  );
 static ThemeData darkTheme  = ThemeData(
     textTheme: const TextTheme(
         headlineSmall: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.w600,
             color: Colors.white
         ) ,
         titleMedium: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.w400,
             color: Colors.white
         ),
         bodyMedium:  TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.w400,
             color: Colors.white
         )
     ),
      cardTheme: CardTheme(
          color: darkPrimary,
          surfaceTintColor: Colors.transparent,
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
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25,)
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: darkSecondary,
          unselectedItemColor: Colors.white ,
          selectedIconTheme: IconThemeData(
              size: 32
          ),
          unselectedLabelStyle: TextStyle(color: Colors.white)
      ),
      scaffoldBackgroundColor: Colors.transparent,
      //primarySwatch: Colors.blue,
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimary,
          primary: darkPrimary,
          secondary: darkSecondary,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          background: darkPrimary
      ),
      useMaterial3: true,
      dividerColor: darkSecondary,
       bottomSheetTheme: const BottomSheetThemeData(
       backgroundColor: darkPrimary
   )
  );

}
