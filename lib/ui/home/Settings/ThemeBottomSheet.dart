
import 'package:flutter/material.dart';
import 'package:islami_project/generated/l10n.dart';
import 'package:islami_project/providers/SettingsProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Row
          InkWell(
            onTap: () {
              // change Theme
              settingsProvider.changeTheme(ThemeMode.light);
            },
              child: settingsProvider.isDarkEnabled() ?
                getUnSelectedItem(
                  AppLocalizations.of(context)!.light
                )
             :  getSelectedItem(
                  AppLocalizations.of(context)!.light
              )),
          //Text
          InkWell(
              onTap: () {
                // change Theme
                settingsProvider.changeTheme(ThemeMode.dark);
              },
              child: settingsProvider.isDarkEnabled() ?
                     getSelectedItem(
                         AppLocalizations.of(context)!.dark
                     )
                  :  getUnSelectedItem(
                  AppLocalizations.of(context)!.dark
              )),
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
    return Row(
      children: [
        Text(text ,
            style: Theme.of(context).textTheme.titleMedium
        ),
      ],
    );
  }
}
