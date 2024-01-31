import 'package:flutter/material.dart';
import 'package:share/share.dart';

class SharePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('صفحة المشاركة', style: TextStyle(color: Colors.white)),
        actions: [],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo.jpg"))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "VISS-TUNISIE ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset in x and y direction
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
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
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        _shareApp(context);
                      },
                      icon: Icon(
                        Icons.share_rounded,
                        color: Color(0xff809258),
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _shareApp(BuildContext context) {
    final RenderBox box = context.findRenderObject() as RenderBox;
    final String text =
        'Check out this awesome app!'; // Customize your sharing message
    Share.share(text,
        subject: 'App Sharing',
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
