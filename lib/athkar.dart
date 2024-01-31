import 'package:flutter/material.dart';
import 'sba7.dart';
import 'Container3.dart';
import 'Container5.dart';
import 'Container6.dart';
import 'Continer2.dart';
import 'Continer4.dart';
import 'Continer morninig.dart';

class Athkar extends StatefulWidget {
  Athkar({Key? key}) : super(key: key);

  @override
  _AthkarState createState() => _AthkarState();
}

class _AthkarState extends State<Athkar> {
  List<Widget> LM = [Container1(), Container2(), Container3(), Container4(), Container5(), Container6()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(' الأذكار', style: Theme.of(context).textTheme.headline1),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: LM.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10); // Adjust the height as needed
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => morninig()),
                      );
                    },
                    child: LM[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
