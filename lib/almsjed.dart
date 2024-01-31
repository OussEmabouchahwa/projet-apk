import 'package:flutter/material.dart';
import 'package:share/share.dart';

class lmsjed extends StatefulWidget {
  @override
  _lmsjedgState createState() => _lmsjedgState();
}

class _lmsjedgState extends State<lmsjed> {
  List<Map<String, dynamic>> azkarList = [
    {
      "count": "اللّهُـمَّ اجْعَـلْ في قَلْبـي نورا ، وَفي لِسـاني نورا، وَاجْعَـلْ في سَمْعي نورا، وَاجْعَـلْ في بَصَري نورا، وَاجْعَـلْ مِنْ خَلْفي نورا، وَمِنْ أَمامـي نورا، وَاجْعَـلْ مِنْ فَوْقـي نورا ، وَمِن تَحْتـي نورا .اللّهُـمَّ أَعْطِنـي نورا. ",
      "rep": 1,
    },
    {
      "count": "يَبْدَأُ بِرِجْلِهِ اليُمْنَى، وَيَقُولُ:أَعوذُ باللهِ العَظيـم وَبِوَجْهِـهِ الكَرِيـم وَسُلْطـانِه القَديـم مِنَ الشّيْـطانِ الرَّجـيم، بِسْمِ اللَّهِ، وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ الله، اللّهُـمَّ افْتَـحْ لي أَبْوابَ رَحْمَتـِك. ",
      "rep": 1,
    }, {
      "count": "يَبْدَأُ بِرِجْلِهِ الْيُسْرَى، وَيَقُولُ:بِسْـمِ اللَّـهِ وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ اللَّهِ، اللَّهُمَّ إنِّي أَسْأَلُكَ مِنْ فَضْلِكَ، اللَّهُمَّ اعْصِمْنِي مِنَ الشَّيْطَانِ الرَّجِيم",
      "rep": 1,
    },
  ];
  List<int> pressCounts = List<int>.filled(10, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('أذكار المسجد'),
      ),
      body: ListView.builder(
        itemCount: azkarList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  azkarList[index]["count"],
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {
                        Share.share(azkarList[index]["count"]);
                        print("Share: ${azkarList[index]["count"]}");
                      },
                      color: Colors.white,
                    ),
                    ElevatedButton(
                      onPressed: pressCounts[index] < azkarList[index]["rep"]
                          ? () {
                        setState(() {
                          pressCounts[index]++;
                        });
                        if (pressCounts[index] ==
                            azkarList[index]["rep"]) {
                          // Additional actions after reaching the specified repetitions
                          print(
                              'Button clicked ${azkarList[index]["rep"]} times. Task completed.');
                        }
                      }
                          : null,
                      child: Text(
                        pressCounts[index] < azkarList[index]["rep"]
                            ?  'تكرار ${pressCounts[index]}/${azkarList[index]["rep"]}'
                            : 'تم',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


