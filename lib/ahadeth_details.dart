import 'package:flutter/material.dart';
import 'package:islami_part1/HadethModel.dart';
import 'package:islami_part1/my_theme_data.dart';

class AhadethDetails extends StatelessWidget {
  // const AhadethDetails({super.key});
  static const String routeName = 'Ahadethdetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    List<String> GHadeth = args.Content;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(

            'islami',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18) , side: BorderSide(color: MyThemesData.brimaryColour , width: 2)),
            elevation: 18,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2,
                  indent: 40, endIndent: 40,color: MyThemesData.brimaryColour,
                );
              },

              itemBuilder: (context, index) {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("${args.Content[index]}" , style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: MyThemesData.blackColour), textAlign: TextAlign.center),
               );
            }, itemCount: args.Content.length,),
          ),
        ),
      ),
    );
  }
}
