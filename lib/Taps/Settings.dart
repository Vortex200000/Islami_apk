import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_part1/Providers/my_provider.dart';
import 'package:islami_part1/languagesheet/languagesheet.dart';
import 'package:islami_part1/my_theme_data.dart';
import 'package:provider/provider.dart';

class SettingsTap extends StatefulWidget {
  // const SettingsTap({super.key});

  @override
  State<SettingsTap> createState() => SettingsTapState();
}

class SettingsTapState extends State<SettingsTap> {
  // List<String> languages = ['en', 'ar'];  *

  // static String lang = '';
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Myprovider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Languages',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: MyThemesData.blackColour),
          ),
        ),
        InkWell(
          onTap: () {
            showLanguageBottomSheet();
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Text(
                prov.IsoCode == "en"
                    ? AppLocalizations.of(context)!.langtypeen
                    : AppLocalizations.of(context)!.langtypear,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: MyThemesData.blackColour)),
            decoration: BoxDecoration(
                border: Border.all(color: MyThemesData.brimaryColour, width: 2),
                borderRadius: BorderRadius.circular(25)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Theming',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: MyThemesData.blackColour),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: Text('Light',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: MyThemesData.blackColour)),
          decoration: BoxDecoration(
              border: Border.all(color: MyThemesData.brimaryColour, width: 2),
              borderRadius: BorderRadius.circular(25)),
        )
      ],
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
      // isScrollControlled: true,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            borderSide: BorderSide(color: MyThemesData.brimaryColour)),
        context: context,
        builder: (context) {
          return Lnag();
        }); //the context can pe shared if the class is statefull
  }
}
