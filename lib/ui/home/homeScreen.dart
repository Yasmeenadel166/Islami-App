
import 'package:flutter/material.dart';
import 'package:islami_project/ui/MyThemeData.dart';
import 'package:islami_project/ui/home/Settings/SettingsTab.dart';
import 'package:islami_project/ui/home/hadeth/HadethTab.dart';
import 'package:islami_project/ui/home/quran/QuranTab.dart';
import 'package:islami_project/ui/home/radio/RadioTab.dart';
import 'package:islami_project/ui/home/tasbeh/Tasbeh.dart';

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
            'Islami'
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
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),),
                label: 'Radio'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),),
                label: 'Sebha'),
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
