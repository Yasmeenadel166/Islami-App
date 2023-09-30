import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatefulWidget {
  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool isPlay = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        Text(
          AppLocalizations.of(context)!.holy_quran_radio,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_next ,color: Theme.of(context).dividerColor, size: 55,),
            SizedBox(width: 18,),
            InkWell(
              onTap: (){
                isPlay = !isPlay;
                setState(() {

                });
              },
              child: Icon(isPlay ? Icons.pause : Icons.play_arrow ,
                color: Theme.of(context).dividerColor,size: 55,),
            ),
            SizedBox(width: 18,),
            Icon(Icons.skip_previous,color: Theme.of(context).dividerColor,size: 55,),

          ],
        )
      ],
    );
  }
}