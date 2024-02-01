import 'package:flutter/material.dart';
import 'sba7.dart';
class Container1 extends StatefulWidget {
  Container1({Key? key}) : super(key: key);

  @override
  _Container1State createState() => _Container1State();
}
class _Container1State extends State<Container1> {
  List<String> athkarList = ["أذكار صباح", "أذكار المساء", "أذكار المسجد", "أذكار الاستيقاظ", "أذكار النوم", "أذكار الصلاة"];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => morninig()), // Use the correct widget class
        );
      },
      child: Container(
        height: 100,
        width: 400,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage("assets/images/morninig.png"),
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 80,
            ),
            Text(
              "أذكار صباح",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline2,
            ),
          ],
        ),
      ),
    );

  }
}
