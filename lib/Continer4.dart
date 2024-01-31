import 'package:flutter/material.dart';
import 'alsalt.dart';
class Container4 extends StatefulWidget {
  Container4({Key? key}) : super(key: key);

  @override
  _Container4State createState() => _Container4State();
}
class _Container4State extends State<Container4> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => prayen()), // Use the correct widget class
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
              image: AssetImage("assets/images/salat.png"),
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
            SizedBox(
              width: 80,
            ),
            Text(
              "أذكار الصلة",
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