import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_project/ui/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islami_project/ui/HadethDetails/HadethDetailsScreen.dart';
import 'package:islami_project/ui/MyThemeData.dart';
import 'package:islami_project/ui/home/homeScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
       localizationsDelegates: AppLocalizations.localizationsDelegates,  // =
      // [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
    locale: Locale('ar'), // or  ar
    );
  }
}
