
import 'package:flutter/material.dart';
import 'package:islami_project/ui/HadethDetails/HadethDetailsScreen.dart';

import 'Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
Hadeth hadeth;
  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).
        pushNamed(HadethDetailsScreen.routeName ,
          arguments: hadeth
        );
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(
            hadeth.title ,
            style:TextStyle(
                fontSize: 28
            ) ,
          )
      ),
    );
  }
}
