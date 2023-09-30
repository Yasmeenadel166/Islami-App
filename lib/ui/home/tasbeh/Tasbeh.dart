import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../../providers/SettingsProvider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  // lenght 5
  List<String> azkar = [
    'سبحان الله',
    'لا حول ولا قوة الا بالله',
    'الله اكبر',
    'الحمد لله',
    'لا اله الا الله'
  ];
  String zekr = 'سبحان الله';
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            // alignment: Alignment.bottomCenter,
            children: [
              Container(
                  alignment: Alignment.center,
                  //color: Colors.black,
                  child:settingsProvider.isDarkEnabled()
                      ?   Image.asset('assets/images/head_sebha_dark.png')
                      :   Image.asset('assets/images/head_sebha_logo.png'),
                 ),
              InkWell(
                onTap: () {
                  counter++;
                  changeZekt();
                  setState(() {
                    turns += 1 / 35;
                  });
                },
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 80),
                    //color: Colors.grey,
                    child: AnimatedRotation(
                        duration: Duration(seconds: 1),
                        turns: turns,
                        child: settingsProvider.isDarkEnabled()
                            ?  Image.asset('assets/images/body_sebha_dark.png')
                            :  Image.asset('assets/images/body_sebha_logo.png'),

                    )),
              ),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.number_of_tasbeh,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
          ),
          Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).dividerColor
                )),
            child: Text('$counter'),
          ),
          Container(

              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              decoration: BoxDecoration(
                  color: settingsProvider.isDarkEnabled()
                  ? Theme.of(context).colorScheme.secondary
        : Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(50),
                  // border: Border.all(
                  //   width: 1,
                  //   color: settingsProvider.isDarkEnabled()
                  //       ? Theme.of(context).colorScheme.secondary
                  //       : Theme.of(context).dividerColor,
                  // )
              ),
              child: Text(
                zekr,
                style:
                    TextStyle(color: settingsProvider.isDarkEnabled()
                ? Colors.black
                : Colors.white,
                    ),
              ))
        ],
      ),
    );
  }

  int count = 0;
  String changeZekt() {
    if (counter < 33) {
      zekr = azkar[count];
    } else if (counter == 34) {
      counter = 0;
      if (count == 4) {
        count = 0;
        zekr = azkar[0];
      } else {
        zekr = azkar[count + 1];
        count++; // in list
      }
    }
    return zekr;
  }
}
