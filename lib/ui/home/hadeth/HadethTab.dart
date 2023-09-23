import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/ui/home/hadeth/HadethTitleWidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Hadeth.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if(allhadeth.isEmpty)
      loadHadethFile();
    return Column(
      children: [
        Expanded(
          flex: 1,
            child: Image.asset('assets/images/hadeth_logo.png')),
        Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 2, color: Theme.of(context).primaryColor))),
            child: Text(
              AppLocalizations.of(context)!.hadeth_number,
              style: TextStyle(fontSize: 25),
            )
        ),
        Expanded(
          flex: 3,
            child:
                allhadeth.isEmpty ? Center(child: CircularProgressIndicator())
          :  ListView.separated(
                itemBuilder: (context, index) {
                  return HadethTitleWidget(allhadeth[index]);   //Text(allhadeth[index].title);
                },
                separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    ),
                itemCount: allhadeth.length))
      ],
    );
  }

  List<Hadeth> allhadeth = [];

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    //pares file
    List<String> hadethList = fileContent.trim().split(
        '#'); //List of string each string is single haeth >seperate each hadeth from other in array
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethLines = singleHadeth
          .trim()
          .split('\n'); // seperate each line in hadeth to get title and content
      String title = hadethLines[0]; // first line
      hadethLines.remove(0); //cuz i've already take the title
      String content = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      allhadeth.add(hadeth);
    }
    setState(() {});
  }
}
