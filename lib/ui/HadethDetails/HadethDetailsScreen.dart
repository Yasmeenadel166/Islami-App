import 'package:flutter/material.dart';
import 'package:islami_project/ui/home/hadeth/Hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
static const String routeName = 'HadethDetailsScreen';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image:  AssetImage('assets/images/default_bg.png'),
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
                      style: TextStyle(
                        fontSize: 28
                      ),
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
