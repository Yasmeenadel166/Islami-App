
import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatefulWidget {

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Row
          getSelectedItem('Light'),
          //Text
          getUnSelectedItem('Dark')
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(text ,
         style: Theme.of(context).textTheme.titleMedium
             ?.copyWith(color: Theme.of(context).colorScheme.secondary)
       ),
       Icon(Icons.check ,
         color:Theme.of(context).colorScheme.secondary)
     ],
   );
}

  Widget getUnSelectedItem(String text) {
    return Text(text ,
        style: Theme.of(context).textTheme.titleMedium
    );
  }
}
