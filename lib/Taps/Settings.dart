import 'package:flutter/material.dart';
import 'package:islami_part1/main.dart';
import 'package:islami_part1/my_theme_data.dart';

class SettingsTap extends StatefulWidget {
  // const SettingsTap({super.key});

  @override
  State<SettingsTap> createState() => SettingsTapState();
}

class SettingsTapState extends State<SettingsTap> {
  List<String> languages = ['en', 'ar'];

  // static String lang = '';
  @override
  Widget build(BuildContext context) {
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
            child: Text('English',
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
        isScrollControlled: true,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            borderSide: BorderSide(color: MyThemesData.brimaryColour)),
        context: context,
        builder: (context) {
          return Container(
              height: MediaQuery.of(context).size.height * .17,
              // you can use media query to take the height o r width of all the screen or some of it
// you should enaple isscrollcontrolled on the showmodalbottomsheet to use mediaquery
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Myapp.setLocale(context, Locale(languages[0]));

                      // setState(() {
                      //
                      // });
                    },
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: Text(
                          'English',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )),
                  ),
                  Divider(
                    thickness: 2,
                    color: MyThemesData.brimaryColour,
                  ),
                  InkWell(
                    onTap: () {
                      Myapp.setLocale(context, Locale(languages[1]));

                      //   setState(() {
                      //
                      // });
                    },
                    child: Container(
                        margin: EdgeInsets.all(8),
                        child: Text(
                          'Arapic',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )),
                  ),
                ],
              ));
        }); //the context can pe shared if the class is statefull
  }
}
