import 'package:flutter/material.dart';
import 'package:share/share.dart';

class wekinuo extends StatefulWidget {
  @override
  _wekinuoState createState() => _wekinuoState();
}

class _wekinuoState extends State<wekinuo> {
  List<Map<String, dynamic>> azkarList = [
  {
  "count": "الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.  ",
  "rep": 1,
  }, {
      "count": "الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه.  ",
      "rep": 1,
    },{
      "count": " لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي",
      "rep": 1,
    },

  ];

  List<int> pressCounts = List<int>.filled(5, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('أذكار الاستيقاظ'),
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


