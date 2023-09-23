
import 'package:flutter/material.dart';
import 'package:islami_project/ui/home/Settings/LanguageBottomSheet.dart';
import 'package:islami_project/ui/home/Settings/ThemeBottomSheet.dart';

class SettingsTab extends StatefulWidget {
  

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 64,
        horizontal: 18
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme'),
          InkWell(
            onTap: (){
              ShowThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 1
                )
              ),
                child: Text('Light' ,
                    style: Theme.of(context).textTheme.titleMedium,
                )
            ),
          ),
          SizedBox(height: 18,),
          Text('Language'),
          InkWell(
            onTap: (){
              ShowLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).dividerColor,
                        width: 1
                    )
                ),
                child: Text('English' ,
                  style: Theme.of(context).textTheme.titleMedium,
                )
            ),
          )
        ],
      ),
    );
  }

  void ShowThemeBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context) {
          return ThemeBottomSheet();
        },
    );
  }

  void ShowLanguageBottomSheet() {
    showModalBottomSheet(context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }
}
