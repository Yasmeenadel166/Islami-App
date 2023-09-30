import 'package:flutter/material.dart';
import 'package:islami_project/ui/home/hadeth/Hadeth.dart';
import 'package:provider/provider.dart';
import '../../providers/SettingsProvider.dart';
import '../MyThemeData.dart';

class HadethDetailsScreen extends StatelessWidget {
static const String routeName = 'HadethDetailsScreen';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<SettingsProvider>(context);
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image:  AssetImage(
                provider.getBachgroundImage()
            ),
            fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 24 , vertical: 48),
                  child: SingleChildScrollView(
                    child: Text(
                      args.content,
                      textAlign: TextAlign.center,
                      style:Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
