import 'package:flutter/material.dart';
import 'almsjed.dart';
class Container3 extends StatefulWidget {
  Container3({Key? key}) : super(key: key);

  @override
  _Container3State createState() => _Container3State();
}
class _Container3State extends State<Container3> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => lmsjed()), // Use the correct widget class
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
              image: AssetImage("assets/images/mosque.png"),
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 80,
            ),
            Text(
              "أذكار المسجد",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline1,
            ),
          ],
        ),
      ),
    );

  }
}