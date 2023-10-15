import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_part1/QurannModel.dart';
import 'package:islami_part1/my_theme_data.dart';

class SuraDetail extends StatefulWidget {
  // const SuraDetail({super.key});
  static const String routName = 'SuraDetail';

  @override
  State<SuraDetail> createState() => _SuraDetailState();
}

class _SuraDetailState extends State<SuraDetail> {
  List<String> Sura = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as QurannModel;
    if (Sura.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 18,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18) , side: BorderSide(color: MyThemesData.brimaryColour , width: 2)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Sura.isEmpty?Center(
                child: CircularProgressIndicator(
                      color: MyThemesData.brimaryColour,

                ),
              ):

              ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    indent: 40, endIndent: 40,color: MyThemesData.brimaryColour,
                  );
                },

                itemBuilder: (context, index) {
                  return Center(

                      child: Text(
                    Sura[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: MyThemesData.blackColour),
                    textAlign: TextAlign.center,
                  ));
                },
                itemCount: Sura.length,
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String suras =
        await rootBundle.loadString('assets/SuraQurann/${index + 1}.txt');
    List<String> Lines = suras.split('\n');
    Sura = Lines;

    setState(() {});
    //this is
  }
}
