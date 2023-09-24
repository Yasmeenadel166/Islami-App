
import 'package:flutter/material.dart';
import 'package:islami_project/ui/MyThemeData.dart';
import 'package:islami_project/ui/home/Settings/SettingsTab.dart';
import 'package:islami_project/ui/home/hadeth/HadethTab.dart';
import 'package:islami_project/ui/home/quran/QuranTab.dart';
import 'package:islami_project/ui/home/radio/RadioTab.dart';
import 'package:islami_project/ui/home/tasbeh/Tasbeh.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedTabIndex =0;
List<Widget> tabs =[
  QuranTab(),
  HadethTab(),
  RadioTab(),
  TasbehTab(),
  SettingsTab()
];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:  AssetImage(
              MyThemeData.isDarkEnabled?
               'assets/images/dark_bg.png'
              :'assets/images/default_bg.png'
          ),
          fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
       //backgroundColor: Colors.transparent,
        appBar: AppBar(
         // backgroundColor: Colors.transparent,
          title: Text(
            AppLocalizations.of(context)!.app_name   // nullable so should put !
          ),

        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (index){
            setState(() {
              selectedTabIndex=index;

            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),),
                label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: 'Settings'),
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }
}
