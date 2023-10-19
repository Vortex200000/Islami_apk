import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_part1/my_theme_data.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        SizedBox(
          height: 40,
        ),
        Text(AppLocalizations.of(context)!.radio),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage("assets/images/prev@1x (2).png"),
                      color: MyThemesData.brimaryColour,
                    ))),
            Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage("assets/images/Icon awesome-play.png"),
                      color: MyThemesData.brimaryColour,
                    ))),
            Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage("assets/images/Icon metro-next.png"),
                      color: MyThemesData.brimaryColour,
                    ))),

            // Expanded(child: Image.asset("assets/images/prev@1x (2).png")),
            // Expanded(child: Image.asset("assets/images/Icon awesome-play.png")),
            // Expanded(child: Image.asset("assets/images/Icon metro-next.png")),
          ],
        )
      ],
    );
  }
}
