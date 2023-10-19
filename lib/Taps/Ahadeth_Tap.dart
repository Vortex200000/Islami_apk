import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_part1/HadethModel.dart';
import 'package:islami_part1/ahadeth_details.dart';
import 'package:islami_part1/my_theme_data.dart';

class AhadethTap extends StatelessWidget {
  // const AhadethTap({super.key});
  List<HadethModel> AllAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(
          thickness: 3,
          color: MyThemesData.brimaryColour,
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: MyThemesData.blackColour),
        ),
        Divider(
          thickness: 3,
          color: MyThemesData.brimaryColour,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: MyThemesData.brimaryColour,
                thickness: 2,
                indent: 40,
                endIndent: 40,
              );
            },
            itemBuilder: (context, index) {
              return Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AhadethDetails.routeName,
                            arguments: AllAhadeth[index]);
                      },
                      child: Text(
                        AllAhadeth[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: MyThemesData.blackColour),
                      )));
            },
            itemCount: AllAhadeth.length,
          ),
        )
      ],
    );
  }

  loadHadeth() {
    rootBundle.loadString('assets/SuraQurann/ahadeth.txt').then((value) {
      // then is used insted of async and await
      // the body of function where you can make changes on the incoming value
      List<String> AhadethList = value.split('#');

      for (int i = 0; i < AhadethList.length; i++) {
        String Hadethone = AhadethList[i];
        List<String> Hadethonelines = Hadethone.trim().split('\n');
        String title = Hadethonelines[0];
        Hadethonelines.removeAt(0);
        List<String> content = Hadethonelines;
        HadethModel Hadethmodel = HadethModel(title, content);
        print(title);
        print(i);
        AllAhadeth.add(Hadethmodel);
      }

      print(AhadethList);
    }).catchError((e) {
      // catch error is used to handle the errors if founded
      print(e.toString());
    });
  }
}
