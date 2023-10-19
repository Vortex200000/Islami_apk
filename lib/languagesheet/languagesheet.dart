import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_part1/Providers/my_provider.dart';
import 'package:provider/provider.dart';

import '../my_theme_data.dart';

class Lnag extends StatelessWidget {
  // const Lnag({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return Container(
        padding: EdgeInsets.all(18),
        height: MediaQuery.of(context).size.height,
        // you can use media query to take the height o r width of all the screen or some of it
// you should enaple isscrollcontrolled on the showmodalbottomsheet to use mediaquery
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                // Myapp.setLocale(context, Locale(languages[0])); *

                // setState(() {
                //
                // });

                provider.changelanguage("en");
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.langtypeen,
                    style: provider.IsoCode == 'en'
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: MyThemesData.brimaryColour)
                        : Theme.of(context).textTheme.bodyMedium,
                  ),
                  Spacer(),
                  provider.IsoCode == "en"
                      ? Icon(
                          Icons.done,
                          color: MyThemesData.brimaryColour,
                        )
                      : SizedBox.shrink()
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // Myapp.setLocale(context, Locale(languages[1])); *

                //   setState(() {
                //
                // });

                provider.changelanguage("ar");
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.langtypear,
                    style: provider.IsoCode == "ar"
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: MyThemesData.brimaryColour)
                        : Theme.of(context).textTheme.bodyMedium,
                  ),
                  Spacer(),
                  provider.IsoCode == "en"
                      ? SizedBox.shrink()
                      : Icon(
                          Icons.done,
                          color: MyThemesData.brimaryColour,
                        )
                ],
              ),
            ),
          ],
        ));
  }
}
