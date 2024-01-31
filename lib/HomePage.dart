import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';


class CollapsingAppbarPage extends StatelessWidget {
  const CollapsingAppbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
              expandedHeight: 400.0,
              floating: false,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                collapseMode: CollapseMode.parallax,

                background: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/imges/ccc.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 120.0),
                      height: 200,
                      width: 320,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "قال   النَّبِيِّ ﷺ",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            "لَا يُؤْمِنُ أحَدُكُمْ، حتَّى يُحِبَّ لأخِيهِ ما ",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text(
                            "يُحِبُّ لِنَفْسِهِ.",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    // function push ma tnshch
                                  },
                                  icon: Icon(
                                    Icons.arrow_circle_left_sharp,
                                    color: Color(0xff809258),
                                    size: 40,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                     GestureDetector(
                       onTap: (){

                       },child: Container(
                       height: 50,
                       width: 80,
                       
                       padding: EdgeInsets.all(10),
                       decoration:BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage("assets/imges/tas.jpg"),
                             fit: BoxFit.cover, // Adjust the BoxFit as needed
                           ),

                           border: Border.all(color: Colors.black45),
                         borderRadius: BorderRadius.circular(20)
                       ),child: Row(
                          children: [
                            Icon( FlutterIslamicIcons.prayer),
                            Text("تسبيح",style: Theme.of(context).textTheme.headline2,),
                          ],
                     ),
                     ),
                     ),

                      GestureDetector(
                        onTap: (){

                        },child: Container(
                        height: 100,
                        width: 80,

                        padding: EdgeInsets.all(10),
                        decoration:BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/imges/tas.jpg"),
                              fit: BoxFit.cover, // Adjust the BoxFit as needed
                            ),

                            border: Border.all(color: Colors.black45),
                            borderRadius: BorderRadius.circular(20)
                        ),child: Row(
                        children: [
                          Icon( FlutterIslamicIcons.prayer),
                          Text("تسبيح",style: Theme.of(context).textTheme.headline2,),
                        ],
                      ),
                      ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Your onPressed logic here
                        },
                        icon: Icon(Icons.nights_stay_outlined),
                        label: Text("ورد المساء",style: Theme.of(context).textTheme.headline2,),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Your onPressed logic here
                        },
                        icon: Icon(Icons.sunny, size: 50),
                        label: Text("ورد الصباح",style: Theme.of(context).textTheme.headline2,),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Your onPressed logic here
                        },
                        icon: Icon(Icons.chat_bubble_outline, size: 50),
                        label: Text("تواصل معنا",style: Theme.of(context).textTheme.headline2,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
