
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/ui/ChapterDetails/VerseWidget.dart';

import '../MyThemeData.dart';

class ChapterDetailsScreen extends StatefulWidget {
static const String routeName = 'ChapterDetailsScreen';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if(verses.isEmpty) {
      loadFile(args.index);
    }
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
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty ?
          Center(child: CircularProgressIndicator(),)  //true
          : Card(
            margin: EdgeInsets.symmetric(horizontal: 24 , vertical: 48),
            child: ListView.separated(                          //false
                itemBuilder: (context, index) {
                  return VerseWidget(verses[index] , index);   // content and index
                },
                itemCount: verses.length,
              separatorBuilder: (context, index) => Container(
                color: Theme.of(context).dividerColor,
                width: double.infinity,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 64),
              ),
            ),
          )
        )
    );
  }

  List<String> verses =[];

  Future<void> loadFile(int index) async {
   String fileContent= await rootBundle.loadString('assets/files/${index+1}.txt');
 // print(fileContent);
    verses =  fileContent.split('\n');
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String title;
  int index;
  ChapterDetailsArgs(this.title , this.index);
}
