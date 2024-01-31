import 'package:flutter/material.dart';
import 'package:share/share.dart';
class prayen extends StatefulWidget {
  @override
  _prayenState createState() => _prayenState();
}

class _prayenState extends State<prayen> {
  List<Map<String, dynamic>> azkarList = [
    {
      "count": "أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله.اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام . ",
      "rep": 1,
    },{
      "count": "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد.  ",
      "rep": 1,
    },{
      "count": " لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون.",
      "rep": 1,
    },{
      "count": " سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر. ",
      "rep": 33,
    },{
      "count": " لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير. ",
      "rep": 1,
    },{
      "count": " بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمقُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.",
      "rep": 3,
    },{
      "count": "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمقُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ. ",
      "rep": 3,
    },{
      "count": "لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير.  ",
      "rep": 10,
    },{
      "count": "اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ.  ",
      "rep": 1,
    },

  ];
  List<int> pressCounts = List<int>.filled(10, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('أذكار الصلة'),
      ),
      body:
      ListView.builder(
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


